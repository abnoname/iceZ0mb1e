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

module iceZ0mb1e (
	input clk,
	output txd,
	input rxd,
	output i2c_scl_oe,
	output i2c_scl_o,
	output i2c_sda_oe,
	output i2c_sda_o,
	input i2c_sda_i,
	inout[7:0] port_a,
	inout[7:0] port_b,
	output debug
);

	reg         reset_n;

	//Z80 Bus:
	reg         wait_n;
	reg         int_n;
	reg         nmi_n;
	reg         busrq_n;
	wire        m1_n;
	wire        mreq_n;
	wire        iorq_n;
	wire        rd_n;
	wire        wr_n;
	wire        rfsh_n;
	wire        halt_n;
	wire        busak_n;
	wire [15:0] addr;
	wire [7:0]  data_in;
	wire [7:0]  data_out;
	//End

	assign debug = iorq_n;

	//Reset Controller:
	reg [2:0] reset_state = 3'd 0;
	always @(posedge clk) begin
		case (reset_state)
		3'd 0 : begin reset_n <= 1'b 0; reset_state <= 3'd 1; end
		3'd 1 : begin reset_n <= 1'b 0; reset_state <= 3'd 2; end
		3'd 2 : begin reset_n <= 1'b 0; reset_state <= 3'd 3; end
		3'd 3 : begin
			reset_n <= 1'b 0; reset_state <= 3'd 4;
			wait_n <= 1;
			int_n  <= 1;
			nmi_n  <= 1;
			busrq_n <= 1;
		end
		3'd 4 : begin reset_n <= 1'b 1; end
		default : begin reset_state <= 3'd 0; end
		endcase
	end

	wire uart_cs_n, port_cs_n, i2c_cs_n;
	wire ram_rd_cs, ram_wr_cs, rom_rd_cs;

	//I/O Address, Note:
	// only the lower 8-bits in peripheral mapped I/O are used to address I/O by the Z80 this means 256 ports
	assign uart_cs_n = ~(!iorq_n & (addr[7:0] >= 15'h18) & (addr[7:0] < 15'h20)); // UART base 0x18
	assign port_cs_n = ~(!iorq_n & (addr[7:0] >= 15'h40) & (addr[7:0] < 15'h50)); // PORT base 0x40
	assign i2c_cs_n = ~(!iorq_n & (addr[7:0] >= 15'h50) & (addr[7:0] < 15'h60)); // i2c base 0x50
	//Memory Address Decoder:
	assign rom_rd_cs = !mreq_n & !rd_n & (addr  < 15'h2000);
	assign ram_rd_cs = !mreq_n & !rd_n & (addr >= 15'h2000) & (addr < 15'h3000);
	assign ram_wr_cs = !mreq_n & !wr_n & (addr >= 15'h2000) & (addr < 15'h3000);

	tv80s tv80s_inst
	(
		.m1_n		(m1_n),
		.mreq_n		(mreq_n),
		.iorq_n		(iorq_n),
		.rd_n		(rd_n),
		.wr_n		(wr_n),
		.rfsh_n		(rfsh_n),
		.halt_n		(halt_n),
		.busak_n	(busak_n),
		.A			(addr[15:0]),
		.do			(data_out[7:0]),
		.reset_n	(reset_n),
		.clk		(clk),
		.wait_n		(wait_n),
		.int_n		(int_n),
		.nmi_n		(nmi_n),
		.busrq_n	(busrq_n),
		.di			(data_in[7:0])
	);

	membram #(12)  ram
	(
		.data_out	(data_in),
		.wr_clk		(clk),
		.data_in	(data_out),
		.wr_cs		(ram_wr_cs),
		.addr		(addr[11:0]),
		.rd_cs		(ram_rd_cs)
	);

	membram #(13, `__def_fw_img, 2**13-1) rom
	(
		.data_out	(data_in),
		.wr_clk		(),
		.data_in	(),
		.wr_cs		(1'b0),
		.addr		(addr[12:0]),
		.rd_cs		(rom_rd_cs)
	);

	simpleio ioporta
	(
		.clk		(clk),
		.reset_n	(reset_n),
		.data_out	(data_in),
		.data_in	(data_out),
		.cs_n		(port_cs_n),
		.rd_n		(rd_n),
		.wr_n		(wr_n),
		.addr		(addr[1:0]),
		.P1			(port_a),
		.P2			(port_b)
	);

	uart16540toZ80 uart0
	(
		.clk		(clk),
		.reset_n	(reset_n),
		.data_out	(data_in),
		.data_in	(data_out),
		.cs_n		(uart_cs_n),
		.rd_n		(rd_n),
		.wr_n		(wr_n),
		.addr		(addr[2:0]),
		.rx			(rxd),
		.tx			(txd)
	);

	i2cmastertoZ80 i2c0 (
		.clk		(clk),
		.reset_n	(reset_n),
		.data_out	(data_in),
		.data_in	(data_out),
		.cs_n		(i2c_cs_n),
		.rd_n		(rd_n),
		.wr_n		(wr_n),
		.addr		(addr[2:0]),
		.i2c_scl_oe (i2c_scl_oe),
		.i2c_scl_o	(i2c_scl_o),
		.i2c_sda_oe (i2c_sda_oe),
		.i2c_sda_o	(i2c_sda_o),
		.i2c_sda_i	(i2c_sda_i)
	);

endmodule
