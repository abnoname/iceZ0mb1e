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

COMPONENTS = . crt0 api ssd1306 main
#COMPONENTS = . crt0 api test

all: $(FIRMWARE_IMG).bin $(FIRMWARE_IMG).hex $(FIRMWARE_IMG).vhex $(FIRMWARE_IMG).dasm

###############################################################################
# Tools
###############################################################################
CC = sdcc -$(ARCH) --std-sdcc99 --max-allocs-per-node 10000 --opt-code-size --code-loc $(CODE_LOCATION) --data-loc $(DATA_LOCATION)
ASM = sdasz80 -glos
DASM = z80dasm
PACKIHX = packihx
SRECCAT = srec_cat -multiple

###############################################################################
# Compile Files
###############################################################################
CC_SRC = $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.c))
CC_OBJ = $(patsubst %.c,%.rel,$(CC_SRC))
ASM_SRC = $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.s))
ASM_OBJ = $(patsubst %.s,%.rel,$(ASM_SRC))
INC_DIRS = $(wildcard */)

$(CC_OBJ) :
	$(CC) $(addprefix -I ,$(INC_DIRS)) -c $(subst .rel,.c,$@) -o $@

$(ASM_OBJ) :
	$(ASM) $(subst .rel,.s,$@)

###############################################################################
# Linker
###############################################################################
$(FIRMWARE_IMG).hex: $(ASM_OBJ) $(CC_OBJ)
	$(CC) --no-std-crt0 $^ -o $(FIRMWARE_IMG).ihx
	$(PACKIHX) < $(FIRMWARE_IMG).ihx > $(FIRMWARE_IMG).hex
	@$(eval REV=`grep s__GSFINAL $(FIRMWARE_IMG).map | sed 's/s__GSFINAL//' | tr -d ' '`)
	@echo "codesize: $(REV)"

###############################################################################
# Output
###############################################################################
$(FIRMWARE_IMG).bin: $(FIRMWARE_IMG).hex
	$(SRECCAT) $(FIRMWARE_IMG).hex -intel -o $(FIRMWARE_IMG).bin -binary

$(FIRMWARE_IMG).vhex: $(FIRMWARE_IMG).hex
	$(SRECCAT) $(FIRMWARE_IMG).hex -intel -o $(FIRMWARE_IMG).vhex -VMem 8

###############################################################################
# Disassembler
###############################################################################
$(FIRMWARE_IMG).dasm: $(FIRMWARE_IMG).bin
	$(DASM) -t -g 0x0 -l $(FIRMWARE_IMG).bin -o $(FIRMWARE_IMG).dasm

###############################################################################
clean:
	rm -f $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.rel))
	rm -f $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.ihx))
	rm -f $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.sym))
	rm -f $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.lst))
	rm -f $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.map))
	rm -f $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.dasm))
	rm -f $(foreach PATH,$(COMPONENTS),$(wildcard $(PATH)/*.asm))
	rm -f *\.lk *\.noi
	rm -f *\.bin *\.hex *\.vhex