# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

import cocotb
from cocotb.triggers import Edge
from cocotb.triggers import FallingEdge
from cocotb.triggers import RisingEdge
from cocotb.triggers import First
from cocotb.monitors import Monitor

# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

class SPIMonitor(Monitor):

    #   mode cpol cpha
    #    0    0    0    drive on falling sample on rising;  sclk=0 when idle
    #    1    0    1    drive on rising  sample on falling; sclk=0 when idle
    #    2    1    1    drive on rising  sample on falling; sclk=1 when idle
    #    3    1    0    drive on falling sample on rising;  sclk=1 when idle

    def __init__(self, name, sclk, cs_n, sdi, sdo, size = 8, lsb_first = False, mode = 0, callback=None, event=None):
        self.name = name
        self.size = size
        self.lsb_first = lsb_first
        self.mode = mode
        self.sclk = sclk
        self.cs_n = cs_n
        self.sdi = sdi
        self.sdo = sdo
        self.sclk_re = RisingEdge(self.sclk)
        self.sclk_fe = FallingEdge(self.sclk)
        self.cs_n_edge = Edge(self.cs_n) if self.cs_n is not None else None
        Monitor.__init__(self, callback, event)

    async def rcv_value(self, sdo_binstr):
        sdi_binstr = ""
        if self.cs_n is not None: # some 2-wire point-to-points do not have cs
            await FallingEdge(self.cs_n)
        if self.lsb_first:
            sdo_binstr = sdo_binstr[::-1]  # data bits sent from left to right
        send_edge = None
        if self.sdo is not None: # some 2-wire implementations are write only
            send_edge = self.sclk_fe if self.mode in [0, 3] else self.sclk_re
        capture_edge  = self.sclk_re if self.mode in [0, 3] else self.sclk_fe
        if self.mode in [0, 2] and self.sdo is not None:
            self.sdo <= int(sdo_binstr[0], 2) # drive before 1st clock
            sdo_binstr = sdo_binstr[1:] # remove bit 0 (left-most bit)
        while len(sdi_binstr) < self.size:
            edge = await First(self.cs_n_edge, capture_edge, send_edge)
            if edge == self.cs_n_edge:
                break
            elif edge == capture_edge:
                sdi_binstr = sdi_binstr + self.sdi.value.binstr
            elif len(sdo_binstr) > 0: # Send Edge. Check if data is available
                self.sdo <= int(sdo_binstr[0], 2)
                sdo_binstr = sdo_binstr[1:] # remove bit 0 (left-most bit)
        if self.lsb_first:
           sdi_binstr = sdi_binstr[::-1]
        return sdi_binstr


    async def _monitor_recv(self):
        spi_val = "{:08b}".format(0)
        while True:
            spi_val = await self.rcv_value(spi_val)
            self._recv(spi_val)



