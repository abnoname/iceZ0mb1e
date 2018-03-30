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

module top(
	output uart_txd,
	input uart_rxd,
	output LED_R,
	output LED_G,
	output LED_B,
	output oled_rst,
	output i2c_scl,
	inout  i2c_sda,
    output spi_sclk,
	output spi_mosi,
	inout  spi_miso,
    output spi_cs
);

	wire clk;

	wire[7:0] port_a;
	wire[7:0] port_b;

	reg LED_R, LED_G, LED_B;
	reg oled_rst;

    always @(posedge clk)
    begin
		LED_R <= !port_a[0];
		LED_G <= !port_a[1];
		LED_B <= !port_a[2];
		oled_rst <= port_b[0];
	end

	//Source = 48MHz, CLKHF_DIV = 2’b00 : 00 = div1, 01 = div2, 10 = div4, 11 = div8 ; Default = “00”
	SB_HFOSC #(.CLKHF_DIV("0b10")) osc (
		.CLKHFPU(1'b1),
		.CLKHFEN(1'b1),
		.CLKHF(clk)
	);

	iceZ0mb1e core (
		.clk		(clk),
		.uart_txd	(uart_txd),
		.uart_rxd	(uart_rxd),
		.i2c_scl	(i2c_scl),
		.i2c_sda	(i2c_sda),
    	.spi_sclk	(spi_sclk),
		.spi_mosi	(spi_mosi),
		.spi_miso	(spi_miso),
    	.spi_cs		(spi_cs),
		.port_a		(port_a),
		.port_b		(port_b),
		.debug		()
	);
	defparam core.RAM_TYPE = 1; // 0 => BRAM, 1 => SPRAM (UltraPlus)

endmodule
