### iceZ0mb1e

iceZ0mb1e aims to build a TV80 based demonstration system-on-chip using complete open source FPGA toolchain flow (http://www.clifford.at/yosys/) including firmware compilation with SDCC.

This is a completely free microcontroller based on customizable open source components.

### iceZ0mb1e consists of following parts
* TV80 CPU (https://opencores.org/project,tv80,overview)
* SoC RTL design, iceZ0mb1e consists of:
    * RAM and ROM (using BRAM or SPRAM)
    * UART 16450 compatible
    * Parallel IO
    * i2C Master
    * SPI Master (all CPOL/CPHA modes supported)
* Top-Level designs for some iCE40 development boards (upduino, HX8K Breakout Board)
* C based firmware, that is embedded into BRAM blocks during build
* API Functions for all hardware interfaces
* Complete make based flow, to be as clean as possible

### Supported FPGAs
* Lattice iCE40 HX8K
* Lattice iCE40 UltraPlus 5K

No special blocks are used, so every comparable FPGA in size would fit.

### Test Firmware
The included test firmware will check the RAM size and write some data to IO ports (blink LEDs). Simple UART access with 9600-8N1 is provided.

### Address Map
* ROM = 0x0000 - 0x1FFF (8192 Byte)
* RAM = 0x8000 - 0x9FFF (8192 Byte)
* 16450 UART Base IO = 0x18
* Parallel Base IO = 0x40
* i2C Master = 0x50
* SPI Master = 060

### Build for Target
* UltraPlus 5K (default target): ```make firmware && make fpga && make flash```
* HX8K: ```make firmware TARGET=8k && make fpga TARGET=8k && make flash TARGET=8k```

### Simulate
* ```make sim TARGET=8k```
* cocotb python tests - gpio loopback and spi test (introduced by jwrr)
  * `cd cocotb; make -f makefile.firmware; make; gtkwaves iceZ0mb1e.fst`
  
### Running SoC
<p align="center">
  <img src="https://raw.githubusercontent.com/abnoname/abnoname.github.io/master/img/iceZ0mb1e/Terminal.png" width="350"/>
  <img src="https://raw.githubusercontent.com/abnoname/abnoname.github.io/master/img/iceZ0mb1e/gtkwave.png" width="350"/>
  <img src="https://raw.githubusercontent.com/abnoname/abnoname.github.io/master/img/iceZ0mb1e/IMG_20180130_003658.jpg" width="350"/>
  <img src="https://raw.githubusercontent.com/abnoname/abnoname.github.io/master/img/iceZ0mb1e/IMG_20180130_003538.jpg" width="350"/>
</p>

### Installing yosys toolchain
Installation of essentials for running yosys, icestorm and arachne-pnr toolchain (Ubuntu 20.04):
```
sudo apt-get install make yosys arachne-pnr fpga-icestorm
```

### Installing verilog simulator
```
sudo apt-get install iverilog gtkwave
```

### Installing SDCC toolchain
```
sudo apt-get install sdcc sdcc-doc sdcc-libraries sdcc-ucsim \
                     z80asm z80dasm srecord
```
