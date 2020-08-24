# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

import cocotb
from cocotb.triggers import Edge
from cocotb.triggers import FallingEdge
from cocotb.triggers import RisingEdge
from cocotb.triggers import First
from cocotb.monitors import Monitor

from utils.dvtest import DVTest
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

class SPIPeripheralMonitor(Monitor):

    #   mode cpol cpha
    #    0    0    0    drive on falling sample on rising;  sclk=0 when idle
    #    1    0    1    drive on rising  sample on falling; sclk=0 when idle
    #    2    1    1    drive on rising  sample on falling; sclk=1 when idle
    #    3    1    0    drive on falling sample on rising;  sclk=1 when idle

    def __init__(self, dut, cfg={}, io={}, callback=None, event=None):
        self.dut = dut
        self.io = io
        if cfg:
            self.name = cfg['name'] if cfg['name'] else 'SPI Monitor'
            self.size = cfg['size'] if cfg['size'] else 8 # bits
            self.lsb_first = cfg['lsb_first'] if cfg['lsb_first'] else False
            self.mode = cfg['mode'] if cfg['mode'] else 0
        self.enable = False # .start() sets enable, .stop() clears enable
        Monitor.__init__(self, callback, event)


    async def peripheral_monitor(self):
        cs_n_edge = Edge(self.io['cs_n']) if self.io['cs_n'] is not None else None
        sdi_binstr = ""
        if self.io['cs_n'] is not None: # some 2-wire point-to-points do not have cs
            await FallingEdge(self.io['cs_n'])
        capture_edge = FallingEdge(self.io['sclk'])
        if self.mode in [0, 3]:
            capture_edge = RisingEdge(self.io['sclk'])
        while len(sdi_binstr) < self.size:
            edge = await capture_edge
            if edge == cs_n_edge:
                break
            elif edge == capture_edge:
                sdi_binstr = sdi_binstr + self.io['sdi'].value.binstr
        if self.lsb_first:
           sdi_binstr = sdi_binstr[::-1]
        return sdi_binstr


    async def peripheral_return_response(self, sdo_binstr):
        cs_n_edge = Edge(self.io['cs_n']) if self.io['cs_n'] is not None else None
        if self.io['cs_n'] is not None: # some 2-wire point-to-points do not have cs
            await FallingEdge(self.io['cs_n'])
        if self.lsb_first:
            sdo_binstr = sdo_binstr[::-1]  # data bits sent from left to right
        send_edge = FallingEdge(self.io['sclk'])
        if self.mode in [0, 2]:
            send_edge = RisingEdge(self.io['sclk'])
            self.io['sdo'] <= int(sdo_binstr[0], 2) # drive before 1st clock
            sdo_binstr = sdo_binstr[1:] # remove bit 0 (left-most bit)
        while sdo_binstr != "":
            edge = await First(cs_n_edge, send_edge)
            if edge == cs_n_edge:
                break
            self.io['sdo'] <= int(sdo_binstr[0], 2)
            sdo_binstr = sdo_binstr[1:] # remove bit 0 (left-most bit)


    async def _monitor_recv(self):
        while True:
            spi_val = await self.peripheral_monitor()
            self._recv( int(spi_val,2) )


    async def peripheral_sequencer(self, resp_list):
        if resp_list == None:
            return
        i = 0
        while self.enable and ( i < len(resp_list) ):
            resp_int = resp_list[i]
            resp_binstr = "{:08b}".format(resp_int)
            await self.peripheral_return_response(resp_binstr)
            i += 1


    def start(self, spi_mon_data=None, spi_response_data=None):
        self.enable = True
        cocotb.fork( self.peripheral_sequencer(spi_response_data) )
#         cocotb.fork( self.peripheral_scoreboard(spi_mon_data) )


    def stop(self):
        self.enable = False



#     async def peripheral_depricated(self, sdo_binstr):
#         self.sclk_re = RisingEdge(self.io['sclk'])
#         self.sclk_fe = FallingEdge(self.io['sclk'])
#         self.cs_n_edge = Edge(self.io['cs_n']) if self.io['cs_n'] is not None else None
#         sdi_binstr = ""
#         if self.io['cs_n'] is not None: # some 2-wire point-to-points do not have cs
#             await FallingEdge(self.io['cs_n'])
#         if self.lsb_first:
#             sdo_binstr = sdo_binstr[::-1]  # data bits sent from left to right
#         send_edge = None
#         if self.io['sdo'] is not None: # some 2-wire implementations are write only
#             send_edge = self.sclk_fe if self.mode in [0, 3] else self.sclk_re
#         capture_edge  = self.sclk_re if self.mode in [0, 3] else self.sclk_fe
#         if self.mode in [0, 2] and self.io['sdo'] is not None:
#             self.io['sdo'] <= int(sdo_binstr[0], 2) # drive before 1st clock
#             sdo_binstr = sdo_binstr[1:] # remove bit 0 (left-most bit)
#         while len(sdi_binstr) < self.size:
#             edge = await First(self.cs_n_edge, capture_edge, send_edge)
#             if edge == self.cs_n_edge:
#                 break
#             elif edge == capture_edge:
#                 sdi_binstr = sdi_binstr + self.io['sdi'].value.binstr
#             elif sdo_binstr != "": # Send Edge. Check if data is available
#                 self.io['sdo'] <= int(sdo_binstr[0], 2)
#                 sdo_binstr = sdo_binstr[1:] # remove bit 0 (left-most bit)
#         if self.lsb_first:
#            sdi_binstr = sdi_binstr[::-1]
#         return sdi_binstr


#     async def peripheral_scoreboard(self, expect_list):
#         if expect_list == None:
#             return
#         dv = DVTest(self.dut, msg_lvl="All", err_max=10)
#         self.expect_list = expect_list
#         log = self.dut._log
#         i = 0
#         spi_val = "{:08b}".format(0)
#         while self.enable and ( i < len(expect_list) ):
#             spi_val = await self.peripheral_monitor()
#             dv.eq(spi_val, expect_list[i], '{} {}'.format(self.name, i) )
#             i += 1
#         dv.done() 




