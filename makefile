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
# Hardware
###############################################################################
SRC = ./import/tv80/rtl/core/tv80_alu.v \
		./import/tv80/rtl/core/tv80_core.v \
		./import/tv80/rtl/core/tv80_mcode.v \
		./import/tv80/rtl/core/tv80n.v \
		./import/tv80/rtl/core/tv80_reg.v \
		./import/tv80/rtl/core/tv80s.v
SRC += ./import/tv80/rtl/uart/T16450.v
SRC += ./rtl/clk_divider.v
SRC += ./rtl/clk_enable.v
SRC += ./rtl/simpleio.v
SRC += ./rtl/simplei2c.v
SRC += ./rtl/simplespi.v
SRC += ./rtl/simplei2c_wrapper.v
SRC += ./rtl/simplespi_wrapper.v
SRC += ./rtl/uart16540_wrapper.v
SRC += ./rtl/membram.v
SRC += ./rtl/iceZ0mb1e.v
TESTBENCH = ./tb/tb_iceZ0mb1e.v
GTKW_FILE = ./tb/tb_iceZ0mb1e.gtkw

###############################################################################
# Software
###############################################################################
FIRMWARE_DIR = ./firmware
FIRMWARE_IMG = iceZ0mb1e
CODE_LOCATION = 0x0200
DATA_LOCATION = 0x2000

###############################################################################
# IO
###############################################################################
SERIALPORT = /dev/ttyUSB1
SERIALBAUD = 9600

###############################################################################
# Default
###############################################################################
TARGET = 5k

ifeq ($(TARGET),1k)
	SRC += ./top/hx1k.v
	ARACHNEFLAGS = -d 1k
	FPGA_PINMAP = ./pinmap/hx1k.pcf
else ifeq ($(TARGET),icezum)
	SRC += ./top/icezum.v
	ARACHNEFLAGS = -d 1k
	FPGA_PINMAP = ./pinmap/icezum.pcf
else ifeq ($(TARGET),5k)
	SRC += ./top/upduino.v
	ARACHNEFLAGS = -d 5k
	FPGA_PINMAP = ./pinmap/upduino.pcf
	ICEPROG_PARAM = -d i:0x0403:0x6014
else ifeq ($(TARGET),8k)
	SRC += ./top/hx8k.v
	ARACHNEFLAGS = -d 8k
	FPGA_PINMAP = ./pinmap/hx8k.pcf
else
endif

###############################################################################
# Tool Output
###############################################################################
SIM_DIR = ./simulation
SYNTH_DIR = ./synthesis
VCD_OUT = $(SIM_DIR)/_test.vcd
COMPILE_OUT = $(SIM_DIR)/_compiler.out
SYNTH_OUT = $(SYNTH_DIR)/_synth_output.v
FPGA_BLIF_OUT = $(SYNTH_DIR)/_fpga.blif
FPGA_TXT_OUT = $(SYNTH_DIR)/_fpga.txt
FPGA_EX_OUT = $(SYNTH_DIR)/_fpga.ex
FPGA_BIN_OUT = $(SYNTH_DIR)/_fpga.bin

###############################################################################
# Tools
###############################################################################
COMPILER = iverilog
SIMULATOR = vvp
VIEWER = gtkwave
YOSYS = yosys
ARACHNEPNR = arachne-pnr
ICEBOXEXPLAIN = icebox_explain
ICEPACK = icepack
ICEPROG = sudo iceprog
QFLOW = qflow

#Tool Options
YOSYSFLAGS = -f "verilog -D__def_fw_img=\"$(FIRMWARE_DIR)/$(FIRMWARE_IMG).vhex\"" -p "synth_ice40 -blif $(FPGA_BLIF_OUT);"
COFLAGS = -s tb_iceZ0mb1e -D__def_fw_img=\"$(FIRMWARE_DIR)/$(FIRMWARE_IMG).vhex\" -D__def_vcd_file=\"$(VCD_OUT)\"
SFLAGS = -v
SOUTPUT = -lxt

###############################################################################
# Firmware
###############################################################################
.PHONY: firmware
firmware:
	$(MAKE) -C $(FIRMWARE_DIR) FIRMWARE_IMG=$(FIRMWARE_IMG) CODE_LOCATION=$(CODE_LOCATION) DATA_LOCATION=$(DATA_LOCATION)

###############################################################################
# Simulation
###############################################################################
$(COMPILE_OUT): $(TESTBENCH) $(SRC)
	-mkdir $(SIM_DIR)
	$(COMPILER) $(COFLAGS) -o $(COMPILE_OUT) $(TESTBENCH) $(SRC)

$(VCD_OUT): $(COMPILE_OUT)
	$(SIMULATOR) $(SFLAGS) $(COMPILE_OUT) $(SOUTPUT)

sim: firmware $(COMPILE_OUT) $(VCD_OUT)
	$(VIEWER) -g -a $(GTKW_FILE) $(VCD_OUT)

###############################################################################
# Synthesis
###############################################################################
fpga: $(SRC) $(FPGA_PINMAP) firmware
	-mkdir $(SYNTH_DIR)
	$(YOSYS) -q -o $(SYNTH_OUT) $(YOSYSFLAGS) $(SRC)
	$(ARACHNEPNR) $(ARACHNEFLAGS) -p $(FPGA_PINMAP) $(FPGA_BLIF_OUT) -o $(FPGA_TXT_OUT)
	$(ICEBOXEXPLAIN) $(FPGA_TXT_OUT) > $(FPGA_EX_OUT)
	$(ICEPACK) $(FPGA_TXT_OUT) $(FPGA_BIN_OUT)

flash: $(FPGA_BIN_OUT)
	$(ICEPROG) $(ICEPROG_PARAM) $(FPGA_BIN_OUT)

sram: $(FPGA_BIN_OUT)
	$(ICEPROG) -s $(ICEPROG_PARAM) $(FPGA_BIN_OUT)

###############################################################################
serial:
	#stty raw -F $(SERIALPORT) speed $(SERIALBAUD)
	#gtkterm --port $(SERIALPORT) --speed $(SERIALBAUD)
	echo "To end the session, press Ctrl+a followed by k."
	screen $(SERIALPORT) $(SERIALBAUD)

clean:
	$(MAKE) -C $(FIRMWARE_DIR) clean
	rm -f $(SYNTH_OUT)
	rm -f $(SIM_DIR)/*
	rm -f $(SYNTH_DIR)/*
