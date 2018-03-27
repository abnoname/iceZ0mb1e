//
// iceZ0mb1e - FPGA 8-Bit TV80 SoC for Lattice iCE40
// with complete open-source toolchain flow using yosys and SDCC
//
// Copyright (c) 2018 Franz Neumann (netinside2000@gmx.de)
//
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included 
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

module memspram (
    clk,
    data_in,
    wr_cs,
    addr,
    data_out,
    rd_cs
);
    input clk;
    input[7:0] data_in;
    input wr_cs;
    input[13:0] addr;
    inout[7:0] data_out;
    input rd_cs;

	wire [15:0] spram_q;
	assign data_out = (rd_cs) ? spram_q[7:0] : 8'bz;

	SB_SPRAM256KA ram0
	(
		.ADDRESS(addr),
		.DATAIN({8'b0, data_in}),
		.MASKWREN(4'b0011),
		.WREN(wr_cs),
		.CHIPSELECT(1'b1),
		.CLOCK(clk),
		.STANDBY(1'b0),
		.SLEEP(1'b0),
		.POWEROFF(1'b1),
		.DATAOUT(spram_q)
	);

endmodule
