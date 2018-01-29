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

PROJECTNAME = firmware

OBJ = crt0.rel ioport.rel main.rel

CODE_LOCATION = 0x0200
DATA_LOCATION = 0x2000

all: $(PROJECTNAME).bin $(PROJECTNAME).hex $(PROJECTNAME).vhex $(PROJECTNAME).dasm

#Compile Files:
%.rel : %.c
	sdcc -mz80 -c $^

%.rel : %.s
	sdasz80 -glos $^

#Linker
$(PROJECTNAME).hex: $(OBJ)
	sdcc -mz80 $^ --no-std-crt0 --code-loc $(CODE_LOCATION) --data-loc $(DATA_LOCATION) -o _temp.ihx
	packihx < _temp.ihx > $(PROJECTNAME).hex

#Output
$(PROJECTNAME).bin: $(PROJECTNAME).hex
	srec_cat $(PROJECTNAME).hex -intel -o $(PROJECTNAME).bin -binary

$(PROJECTNAME).vhex: $(PROJECTNAME).hex
	srec_cat $(PROJECTNAME).hex -intel -o $(PROJECTNAME).vhex -VMem 8

#Disassembler
$(PROJECTNAME).dasm: $(PROJECTNAME).bin
	z80dasm -t -g 0x0 -l $(PROJECTNAME).bin -o $(PROJECTNAME).dasm

#Clean:
clean:
	rm -f *\.rel *\.ihx *\.sym *\.lst *\.map *\.noi *\.bin *\.dasm *\.asm *\.lnk *\.rel *\.def *\.hex *\.vhex *\.html *\.lk

