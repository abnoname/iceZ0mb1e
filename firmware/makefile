#
# iceZ0mb1e - FPGA 8-Bit TV80 SoC for Lattice iCE40
# with complete open-source toolchain flow using yosys and SDCC
#
# Copyright (c) 2018 Franz Neumann (netinside2000@gmx.de)
#
# Permission is hereby granted, free of charge, to any person obtaining a 
# copy of this software and associated documentation files (the "Software"), 
# to deal in the Software without restriction, including without limitation 
# the rights to use, copy, modify, merge, publish, distribute, sublicense, 
# and/or sell copies of the Software, and to permit persons to whom the 
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included 
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

###############################################################################
# usage e.g.:
# make FIRMWARE_IMG=test CODE_LOCATION=0x0200 DATA_LOCATION=0x1000
###############################################################################
ARCH = mz80
OBJ = crt0.rel ioport.rel ssd1306.rel main.rel

all: $(FIRMWARE_IMG).bin $(FIRMWARE_IMG).hex $(FIRMWARE_IMG).vhex $(FIRMWARE_IMG).dasm

###############################################################################
# Tools
###############################################################################
CC = sdcc
ASM = sdasz80
DASM = z80dasm
PACKIHX = packihx
SRECCAT = srec_cat

###############################################################################
# Compile Files
###############################################################################
%.rel : %.c
	$(CC) -$(ARCH) -c $^

%.rel : %.s
	$(ASM) -glos $^

###############################################################################
# Linker
###############################################################################
$(FIRMWARE_IMG).hex: $(OBJ)
	$(CC) -$(ARCH) $^ --no-std-crt0 --code-loc $(CODE_LOCATION) --data-loc $(DATA_LOCATION) -o _temp.ihx
	$(PACKIHX) < _temp.ihx > $(FIRMWARE_IMG).hex

###############################################################################
# Output
###############################################################################
$(FIRMWARE_IMG).bin: $(FIRMWARE_IMG).hex
	$(SRECCAT) $(FIRMWARE_IMG).hex -intel -o $(FIRMWARE_IMG).bin -binary

$(FIRMWARE_IMG).vhex: $(FIRMWARE_IMG).hex
	#crop hex file to real ROM size
	$(SRECCAT) $(FIRMWARE_IMG).hex -intel -crop 0x0 $(DATA_LOCATION) -o $(FIRMWARE_IMG).vhex -VMem 8

###############################################################################
# Disassembler
###############################################################################
$(FIRMWARE_IMG).dasm: $(FIRMWARE_IMG).bin
	$(DASM) -t -g 0x0 -l $(FIRMWARE_IMG).bin -o $(FIRMWARE_IMG).dasm

###############################################################################
clean:
	rm -f *\.rel *\.ihx *\.sym *\.lst *\.map *\.noi *\.bin *\.dasm *\.asm *\.lnk *\.rel *\.def *\.hex *\.vhex *\.html *\.lk
