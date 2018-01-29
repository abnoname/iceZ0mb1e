### iceZ0mb1e

iceZ0mb1e aims to build a complete TV80 based demonstration system-on-chip using complete open source FPGA toolchain flow (http://www.clifford.at/yosys/) including firmware compilation with SDCC.

### iceZ0mb1e consists of following parts
* TV80 CPU (https://opencores.org/project,tv80,overview)
* SoC RTL design (iceZ0mb1e => UART16450, simple parallel IO, RAM and ROM using BRAM)
* Top-Level designs for some iCE40 development boards (upduino, HX8K Breakout Board)
* C based firmware, that is embedded into BRAM blocks during build
* Complete make based flow, to be as clean as possible

### Supported FPGAs
* Lattice iCE40 HX8K
* Lattice iCE40 UltraPlus 5K

No special blocks are used, so every comparable FPGA in size would fit.

### Test Firmware
The included test firmware will check the RAM size and write some data to IO ports (blink LEDs). Simple UART access with 9600-8N1 is provided.

### Build for Target
* UltraPlus 5K (default target): ```make firmware && make fpga && make flash```
* HX8K: ```make firmware TARGET=8k && make fpga TARGET=8k && make flash TARGET=8k```

### Installation of yosys toolchain
Installation of build essentials for building yosys, icestorm and arachne-pnr toolchain:
```
sudo apt-get install build-essential clang bison flex libreadline-dev gawk tcl-dev libffi-dev git mercurial graphviz xdot pkg-config python cmake git libftdi-dev
```

Get yosys, icestorm and arachne-pnr (latest version supports Lattice UltraPlus):
```git clone https://github.com/cliffordwolf/icestorm.git```
```git clone https://github.com/cseed/arachne-pnr.git```
```git clone https://github.com/cliffordwolf/yosys.git```

Compile toolchain:
```
cd ./icestorm/
make clean
make -j$(nproc)
sudo make install
```
```
cd ./arachne-pnr/
make clean
make -j$(nproc)
sudo make install
```
```
cd ./yosys/
make clean
make -j$(nproc)
sudo make install
```

### Installation of SDCC toolchain
```
sudo apt-get install sdcc sdcc-doc sdcc-libraries sdcc-ucsim z80asm z80dasm z88dk z88dk-bin z88dk-data z88dk-doc srecord
```

### Why iceZ0mb1e
* Because it is inspired by redz0mb1e project from fpgakuechle (http://www.mikrocontroller.net/svnbrowser/redz0mb1e/).
* I ported redz0mb1e to Altera DE1 several years ago (http://abnoname.blogspot.de/2013/07/z1013-auf-fpga-portierung-fur-altera-de1.html).