//
// iceZ0mb1e - FPGA 8-Bit TV80 SoC for Lattice iCE40
// with complete open-source toolchain flow using yosys and SDCC
//
// Copyright (c) 2018 Franz Neumann (netinside2000@gmx.de)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

module simplespi(
	input clk,
	input clk_spi_en,
	input reset,

	output req_next,

	input start,
	input finish,

	input CPOL,
	input CPHA,

	input[7:0] data_write,
	output[7:0] data_read,

    output sclk,
	output mosi,
	input  miso,
    output cs
);

	localparam STATE_IDLE = 0;
	localparam STATE_START = 1;
	localparam STATE_DATA_SETUP = 2;
	localparam STATE_DATA_SAMPLE = 3;

	reg[1:0] sync_start;
	wire start_edge = (sync_start == 2'b01);
	reg latch_finish;

	reg [7:0] data_read;
	reg req_next;
    reg sclk_o, cs, mosi;

	assign sclk = (CPOL == 1'b 1) ? sclk_o : ~sclk_o;

	reg [4:0] fsm_state;
	reg [7:0] bit_count;

	always @(posedge clk) begin
		if (reset == 1'b1) begin
			fsm_state <= STATE_IDLE;
			sync_start <= 2'b00;
			sclk_o <= 1'b 1;
			req_next <= 1'b0;
		end	else begin
			if (clk_spi_en == 1'b1) begin
				sync_start <= {sync_start[0], start};
				case(fsm_state)
					STATE_IDLE: begin
						cs <= 1'b 1;
                        sclk_o <= 1'b 1;
						if (start_edge) begin
							fsm_state <= STATE_START;
						end
					end

					STATE_START: begin
						req_next <= 1'b0;
						latch_finish <= finish;
						bit_count <= 8'd 7;
						fsm_state <= STATE_DATA_SETUP;
						if (CPHA == 1'b1) begin
							cs <= 1'b 0;
						end
					end

					STATE_DATA_SETUP: begin
						sclk_o <= (CPHA == 1'b0) ? 1'b1 : 1'b0;
						cs <= 1'b 0;
						mosi <= data_write[bit_count];
						fsm_state <= STATE_DATA_SAMPLE;
					end

					STATE_DATA_SAMPLE: begin
						sclk_o <= (CPHA == 1'b0) ? 1'b0 : 1'b1;
						data_read[bit_count] <= miso;
						if (bit_count == 8'd0) begin
							req_next <= 1;
							if ( start_edge == 1'b1 ) begin
								req_next <= 0;
								fsm_state <= STATE_START;
							end
							if (latch_finish == 1'b 1) begin
								fsm_state <= STATE_IDLE;
							end
						end else begin
							fsm_state <= STATE_DATA_SETUP;
							bit_count <= bit_count - 1;
						end
					end

				endcase
			end
		end
	end
endmodule
