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
SRC  = ./import/tv80/rtl/core/*.v
SRC += ./rtl/*.v
TESTBENCH = tb_iceZ0mb1e
TB_FILE = ./tb/$(TESTBENCH).v
GTKW_FILE = ./tb/$(TESTBENCH).gtkw

###############################################################################
# Software
###############################################################################
FIRMWARE_DIR = ./firmware
FIRMWARE_IMG = iceZ0mb1e
CODE_LOCATION = 0x0200
DATA_LOCATION = 0x8000

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
	PNRFLAGS = --hx1k
	ICETIMEFLAGS = -d hx1k
	FPGA_PINMAP = ./pinmap/hx1k.pcf
else ifeq ($(TARGET),icezum)
	SRC += ./top/icezum.v
	PNRFLAGS = --hx1k
	ICETIMEFLAGS = -d hx1k
	FPGA_PINMAP = ./pinmap/icezum.pcf
else ifeq ($(TARGET),5k)
	SRC += ./top/upduino.v
	PNRFLAGS = --up5k --package sg48
	ICETIMEFLAGS = -d up5k
	FPGA_PINMAP = ./pinmap/upduino.pcf
	ICEPROG_PARAM = -d i:0x0403:0x6014
else ifeq ($(TARGET),8k)
	SRC += ./top/hx8k.v
	PNRFLAGS = --hx8k --package ct256
	ICETIMEFLAGS = -d hx8k
	FPGA_PINMAP = ./pinmap/hx8k.pcf
else ifeq ($(TARGET),tinybx)
	SRC += ./top/tinybx.v
	PNRFLAGS = --hx8k --package cm81
	ICETIMEFLAGS = -d hx8k
	FPGA_PINMAP = ./pinmap/tinybx.pcf
else
endif

###############################################################################
# Tool Output
###############################################################################
SIM_DIR = ./simulation
SYNTH_DIR = ./synthesis
VCD_OUT = $(SIM_DIR)/_test.vcd
COMPILE_OUT = $(SIM_DIR)/_compiler.out
SYNTH_JSON_OUT = $(SYNTH_DIR)/_synth_output.json
FPGA_ASC_OUT = $(SYNTH_DIR)/_fpga.asc
FPGA_BIN_OUT = $(SYNTH_DIR)/_fpga.bin
FPGA_VLOG_OUT = $(SYNTH_DIR)/_fpga.v

###############################################################################
# Tools
###############################################################################
COMPILER = iverilog
SIMULATOR = vvp
VIEWER = gtkwave
YOSYS = yosys
NEXTPNR = nextpnr-ice40
ICEBOXVLOG = icebox_vlog
ICEPACK = icepack
ICEPROG = sudo iceprog
ICETIME = icetime
QFLOW = qflow

WSLENV ?= notwsl
ifndef WSLENV
    # this runs when you _are_ in WSL
    ICEPROG = iceprog.exe
endif

#Tool Options
YOSYSFLAGS = -f "verilog -D__def_fw_img=\"$(FIRMWARE_DIR)/$(FIRMWARE_IMG).vhex\"" -p "synth_ice40 -json $(SYNTH_JSON_OUT);"
COFLAGS = -s $(TESTBENCH) -D__def_fw_img=\"$(FIRMWARE_DIR)/$(FIRMWARE_IMG).vhex\" -D__def_vcd_file=\"$(VCD_OUT)\"
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
$(COMPILE_OUT): $(TB_FILE)
	-mkdir $(SIM_DIR)
	$(COMPILER) $(COFLAGS) -o $(COMPILE_OUT) $(TB_FILE) $(SRC)

$(VCD_OUT): $(COMPILE_OUT)
	$(SIMULATOR) $(SFLAGS) $(COMPILE_OUT) $(SOUTPUT)

sim: firmware $(COMPILE_OUT) $(VCD_OUT)
	$(VIEWER) -g -a $(GTKW_FILE) $(VCD_OUT)

###############################################################################
# Synthesis
###############################################################################
fpga: $(SRC) $(FPGA_PINMAP) firmware
	-mkdir $(SYNTH_DIR)
	$(YOSYS) -q $(YOSYSFLAGS) $(SRC)
	$(NEXTPNR) $(PNRFLAGS) --json $(SYNTH_JSON_OUT) --pcf $(FPGA_PINMAP) --asc $(FPGA_ASC_OUT)
	#$(ICEBOXVLOG) $(FPGA_ASC_OUT) > $(FPGA_VLOG_OUT)
	$(ICEPACK) $(FPGA_ASC_OUT) $(FPGA_BIN_OUT)

time:
	$(ICETIME) -mt -p $(FPGA_PINMAP) $(ICETIMEFLAGS) $(FPGA_ASC_OUT)

flash: $(FPGA_BIN_OUT)
	$(ICEPROG) $(ICEPROG_PARAM) $(FPGA_BIN_OUT)

sram: $(FPGA_BIN_OUT)
	$(ICEPROG) -S $(ICEPROG_PARAM) $(FPGA_BIN_OUT)

###############################################################################
serial:
	#stty raw -F $(SERIALPORT) speed $(SERIALBAUD)
	#gtkterm --port $(SERIALPORT) --speed $(SERIALBAUD)
	echo "To end the session, press Ctrl+a followed by k."
	screen $(SERIALPORT) $(SERIALBAUD)

clean:
	$(MAKE) -C $(FIRMWARE_DIR) clean
	rm -f $(SIM_DIR)/*
	rm -f $(SYNTH_DIR)/*
