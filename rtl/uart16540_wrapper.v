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

module uart16540_wrapper (
    input clk,
    input reset_n,
    inout[7:0] data_out,
    input[7:0] data_in,
    input cs_n,
    input rd_n,
    input wr_n,
    input[2:0] addr,
    input rx,
    output tx
);

    wire read_sel = !cs_n & !rd_n & wr_n;

	wire [7:0] uart_rd_data;
	wire baudout;

	assign data_out = (read_sel) ? uart_rd_data : 8'b0;

	T16450 uart0
	(
		.reset_n     (reset_n),
		.clk         (clk),
		.rclk        (baudout),
		.cs_n        (cs_n),
		.rd_n        (rd_n),
		.wr_n        (wr_n),
		.addr        (addr),
		.wr_data     (data_in),
		.rd_data     (uart_rd_data),
		.sin         (rx),
		.cts_n       (1'b0),
		.dsr_n       (1'b0),
		.ri_n        (1'b0),
		.dcd_n       (1'b0),
		.sout        (tx),
		.rts_n       (),
		.dtr_n       (),
		.out1_n      (),
		.out2_n      (),
		.baudout     (baudout),
		.intr        ()
	);


endmodule
