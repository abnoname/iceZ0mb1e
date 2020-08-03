# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

import random
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Edge
from cocotb.triggers import FallingEdge
from cocotb.triggers import RisingEdge
from cocotb.triggers import ClockCycles
from dv_test import dv_test


# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

@cocotb.test()
async def test_icez0mb1e_gpio_loopback(dut):

    en_gpio_loopback_test = True
    en_spi_test = True

    dv = dv_test(dut)

    clk = Clock(dut.clk, 10, units="ns")  # Create a 10us period clock on port clk
    cocotb.fork(clk.start())  # Start the clock

    dut.uart_txd = 0
    await FallingEdge(dut.clk)

    ### =============================================================================================================
    ### GPIO LOOPBACK TEST
     
    if en_gpio_loopback_test:
        dv.info("GPIO Loopback Test")
        for i in range(20000):
            await FallingEdge(dut.clk)
            dut.P2_in <= dut.P1_out.value
            try:
                gpio_value = int(dut.P1_out.value.binstr,2)
                loop_done = True if gpio_value == 0xff else False
            except ValueError:
                gpio_value = 0
                loop_done = False
            if (i+1) % 1000 == 0:
                dv.info("clock = " + str(i+1) +": P1_out = " + str(gpio_value) )
            if loop_done: break
    
        await Edge(dut.P1_out)    
    
        gpio_result = int(dut.P1_out.value.binstr,2)
        if gpio_result == 0:
            dv.info("GPIO Loopback Test Passed")
        else:
            dv.info("GPIO Loopback Test Failed - Error Count = " + str(gpio_result) )
    
        dut.P1_in = 0
        await ClockCycles(dut.clk,100)


     ### =============================================================================================================
     ### SPI TEST
     
    if en_spi_test:
        dv.info("SPI Test (random modes and speeds)")
        #seed(1)
        spi_val = "10010111";
        err_cnt = 0;
        toggle = 0
        for i in range(20):
            mode = random.randrange(4) # i % 4
            expect = random.randrange(256) # 0x91 + i
            dut.P2_in.value = expect
            
            # Bit [1:0] mode
            # Bit [2]   toggle (ensure p1_in changes)
            # Bit [6:3] speed (div sys clk)
            # Bit [7]   done
            speed = random.randrange(0, 16, 2)
            toggle = (toggle + 4) & 0x04
            P1_in = (speed << 3) | toggle | mode
            dut.P1_in.value = P1_in
            spi_val = await spi_periph(dut, dut.spi_sclk, dut.spi_cs, dut.spi_mosi, dut.spi_miso, "{:08b}".format(int(spi_val)), mode )
            actual = int(spi_val,2)
            result = "pass" if actual == expect else "FAIL"
            msg = result + " P1_in = " + hex(P1_in) + " speed = " + str(int(speed/2))  + " mode = " + str(mode) + " actual = " + str(actual)+ " expect = " + str(expect)
            if result == "FAIL":
                err_cnt += 1
                dv.info(msg)
            else:
                dv.info(msg)
    
        dut.P1_in.value = 0x80
        if err_cnt == 0:
            dv.info("SPI Test Passed")
        else:
            dv.info("SPI Test Failed - Error Count = " + str(err_cnt) )
    
        await ClockCycles(dut.clk,100)
    

    ### =============================================================================================================

#
#     for i in range(100):
#         await Edge(dut.spi_mosi)
#         val = dut.spi_mosi.value.binstr
#         dv.info("mosi=" + val)
#         dut.spi_miso <= dut.spi_mosi
#     dv.info("after spi loop back")
#     for i in range(2000):
#         await FallingEdge(dut.clk)




async def spi_periph(dut, sclk, cs_n, sdi, sdo, sdo_str, spi_mode = 0):
    msb_first = True
    loop_back = False
    size = 8 ### len(sdo_str)
    sdi_str = ""
    cnt = 0
    await FallingEdge(cs_n)
    if msb_first:
        sdo_str = sdo_str[::-1]
        
    # spi_mode cpol cpha
    #    0      0    0    drive on falling sample on rising;  sclk=0 when idle
    #    1      0    1    drive on rising  sample on falling; sclk=0 when idle
    #    2      1    1    drive on rising  sample on falling; sclk=1 when idle
    #    3      1    0    drive on falling sample on rising;  sclk=1 when idle
    capture_edge = '1' if spi_mode == 0 or spi_mode == 3 else '0'
        
    sdo <= int(sdi.value.binstr,2) if loop_back else int(sdo_str[-1],2)
    while cnt < size:
        if cs_n.value.binstr != '0':
            break
        await Edge(sclk)
        if sclk.value.binstr == capture_edge:
            cnt += 1
            sdi_str = sdi.value.binstr + sdi_str
###         else:
###             l = len(sdo_str)
###             if l > 0:
###                 sdo_str = sdo_str[:-1]
###                 sdo <= int(sdo_str[-1],2)
#         if loop_back:
#             sdo <= int(sdi.value.binstr,2)
    if msb_first:
       sdi_str = sdi_str[::-1]
    return sdi_str


