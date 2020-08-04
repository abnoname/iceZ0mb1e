# This file is public domain, it can be freely copied without restrictions.
# SPDX-License-Identifier: CC0-1.0

import cocotb
from cocotb.triggers import Edge
from cocotb.triggers import FallingEdge
from cocotb.triggers import RisingEdge

# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

class spi:

    #   mode cpol cpha
    #    0    0    0    drive on falling sample on rising;  sclk=0 when idle
    #    1    0    1    drive on rising  sample on falling; sclk=0 when idle
    #    2    1    1    drive on rising  sample on falling; sclk=1 when idle
    #    3    1    0    drive on falling sample on rising;  sclk=1 when idle

    def __init__(self, sclk, cs_n, sdi, sdo, size = 8, lsb_first = False):
        self.sclk = sclk
        self.cs_n = cs_n
        self.sdi = sdi
        self.sdo = sdo
        self.size = size
        self.lsb_first = lsb_first


    async def periph(self, sdo_binstr, spi_mode = 0):
        sdi_binstr = ""
        if self.cs_n is not None: await FallingEdge(self.cs_n)
        if self.lsb_first:
            sdo_binstr = sdo_binstr[::-1]

        capture_edge = '1' if spi_mode == 0 or spi_mode == 3 else '0'

        sdi_cnt = 0
        sdo_cnt = 0
        if spi_mode == 0 or spi_mode == 2:
            if self.sdo is not None: self.sdo <= int(sdo_binstr[0], 2)
            sdo_cnt = 1 if spi_mode == 0 or spi_mode == 2 else 0
        while sdi_cnt < self.size:
            if self.cs_n.value.binstr != '0': break # error
            await Edge(self.sclk)
            if self.sclk.value.binstr == capture_edge:
                sdi_binstr = sdi_binstr + self.sdi.value.binstr
                sdi_cnt += 1
            elif sdo_cnt < self.size: # Launch Edge
                if self.sdo is not None: self.sdo <= int(sdo_binstr[sdo_cnt], 2)
                sdo_cnt += 1

        if self.lsb_first:
           sdi_binstr = sdi_binstr[::-1]
        return sdi_binstr


