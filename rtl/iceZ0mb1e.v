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

module iceZ0mb1e  #(
	parameter RAM_TYPE = 0,
	parameter RAM_WIDTH = 13,
	parameter ROM_WIDTH = 13
) (
	input clk,
	output uart_txd,
	input uart_rxd,
	output i2c_scl,
	inout i2c_sda,
    output spi_sclk,
	output spi_mosi,
	inout  spi_miso,
    output spi_cs,
	inout[7:0] port_a,
	inout[7:0] port_b,
	output debug
);
	localparam ROM_SIZE = (1 << ROM_WIDTH);
	localparam RAM_SIZE = (1 << RAM_WIDTH);

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
	wire [7:0]  data_miso;
	wire [7:0]  data_mosi;
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

	wire uart_cs_n, port_cs_n, i2c_cs_n, spi_cs_n;
	wire rom_cs_n, ram_cs_n;

	//I/O Address, Note:
	// only the lower 8-bits in peripheral mapped I/O are used to address I/O by the Z80 this means 256 ports
	assign uart_cs_n = ~(!iorq_n & (addr[7:0] >= 8'h18) & (addr[7:0] < 8'h20)); // UART base 0x18
	assign port_cs_n = ~(!iorq_n & (addr[7:0] >= 8'h40) & (addr[7:0] < 8'h50)); // PORT base 0x40
	assign i2c_cs_n = ~(!iorq_n & (addr[7:0] >= 8'h50) & (addr[7:0] < 8'h60)); // i2c base 0x50
	assign spi_cs_n = ~(!iorq_n & (addr[7:0] >= 8'h60) & (addr[7:0] < 8'h70)); // spi base 0x60
	//Memory Address Decoder:
	assign rom_cs_n = ~(!mreq_n & (addr  < ROM_SIZE));
	assign ram_cs_n = ~(!mreq_n & (addr >= ROM_SIZE) & (addr < (ROM_SIZE+RAM_SIZE)) );

	//SoC Info
	initial begin
		$display("iceZ0mb1e Configuration Info" );
		$display("ROM width = %d, size = %X", ROM_WIDTH, ROM_SIZE );
		$display("RAM width = %d, size = %X", RAM_WIDTH, RAM_SIZE );
		$display("RAM type = %d", RAM_TYPE );
	end

	tv80s cpu
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
		.do			(data_mosi[7:0]),
		.reset_n	(reset_n),
		.clk		(clk),
		.wait_n		(wait_n),
		.int_n		(int_n),
		.nmi_n		(nmi_n),
		.busrq_n	(busrq_n),
		.di			(data_miso[7:0])
	);
	defparam cpu.Mode = 1; // 0 => Z80, 1 => Fast Z80, 2 => 8080, 3 => GB

	membram #(ROM_WIDTH, `__def_fw_img, (1<<ROM_WIDTH)-1) rom
	(
    	.clk		(clk),
    	.reset_n	(reset_n),
    	.data_out	(data_miso),
    	.data_in	(),
    	.cs_n		(rom_cs_n),
    	.rd_n		(rd_n),
    	.wr_n		(wr_n),
    	.addr		(addr[ROM_WIDTH-1:0])
	);

generate
    if(RAM_TYPE == 1) begin
		//UltraPlus SPRAM
		memspram #(RAM_WIDTH) ram
		(
			.clk		(clk),
			.reset_n	(reset_n),
			.data_out	(data_miso),
			.data_in	(data_mosi),
			.cs_n		(ram_cs_n),
			.rd_n		(rd_n),
			.wr_n		(wr_n),
			.addr		(addr[RAM_WIDTH-1:0])
		);
	end else if(RAM_TYPE == 2) begin
		//ext. SRAM => todo
		//
    end else begin
		//FPGA BRAM
		membram #(RAM_WIDTH)  ram
		(
			.clk		(clk),
			.reset_n	(reset_n),
			.data_out	(data_miso),
			.data_in	(data_mosi),
			.cs_n		(ram_cs_n),
			.rd_n		(rd_n),
			.wr_n		(wr_n),
			.addr		(addr[RAM_WIDTH-1:0])
		);
	end
endgenerate

	simpleio ioporta
	(
		.clk		(clk),
		.reset_n	(reset_n),
		.data_out	(data_miso),
		.data_in	(data_mosi),
		.cs_n		(port_cs_n),
		.rd_n		(rd_n),
		.wr_n		(wr_n),
		.addr		(addr[1:0]),
		.P1			(port_a),
		.P2			(port_b)
	);

	uart16540_wrapper uart0
	(
		.clk		(clk),
		.reset_n	(reset_n),
		.data_out	(data_miso),
		.data_in	(data_mosi),
		.cs_n		(uart_cs_n),
		.rd_n		(rd_n),
		.wr_n		(wr_n),
		.addr		(addr[2:0]),
		.rx			(uart_rxd),
		.tx			(uart_txd)
	);

	simplei2c_wrapper i2c0 (
		.clk		(clk),
		.reset_n	(reset_n),
		.data_out	(data_miso),
		.data_in	(data_mosi),
		.cs_n		(i2c_cs_n),
		.rd_n		(rd_n),
		.wr_n		(wr_n),
		.addr		(addr[3:0]),
		.i2c_scl	(i2c_scl),
		.i2c_sda	(i2c_sda)
	);

	simplespi_wrapper spi0 (
		.clk		(clk),
		.reset_n	(reset_n),
		.data_out	(data_miso),
		.data_in	(data_mosi),
		.cs_n		(spi_cs_n),
		.rd_n		(rd_n),
		.wr_n		(wr_n),
		.addr		(addr[3:0]),
		.sclk		(spi_sclk),
		.mosi		(spi_mosi),
		.miso		(spi_miso),
		.cs			(spi_cs)
	);

endmodule
