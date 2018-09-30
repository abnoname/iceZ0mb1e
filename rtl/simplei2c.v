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

module simplei2c(
	input clk,
	input clk_i2c_en,
	input reset,

	output req_next,

	input start,
	input restart,
	input stop,
	input mode_rw,
	input ack_sda,

	input[7:0] data_write,
	output[7:0] data_read,

	input i2c_sda_in,
	output i2c_sda_out,
	output i2c_sda_oen,
	output i2c_scl_out
);

	localparam STATE_IDLE = 4'h0;
	localparam STATE_START_L = 4'h1;
	localparam STATE_START_H = 4'h2;
	localparam STATE_DATA_L = 4'h3;
	localparam STATE_DATA_H = 4'h4;
	localparam STATE_ACK_L = 4'h5;
	localparam STATE_ACK_H = 4'h6;
	localparam STATE_STOP_L = 4'h7;
	localparam STATE_STOP_H = 4'h8;

    `define MODE_WR 1'b0
    `define MODE_RD 1'b1

	reg [7:0] data_read;
	reg req_next;

	reg latch_stop;
	reg latch_ack_sda;
	reg latch_restart;

	reg [3:0] fsm_state;
	reg [7:0] bit_count;
	reg i2c_sda;
	reg i2c_scl;
	wire i2c_scl_out = i2c_scl;
	wire i2c_sda_out = i2c_sda;
	wire i2c_sda_oen;

	assign i2c_sda_oen = ((i2c_sda) == 1'b0) ? 1'b1 : 1'b0; //drive low -> driver enable

	always @(posedge clk) begin
		if (reset == 1'b1) begin
			fsm_state <= STATE_IDLE;
			req_next <= 1'b0;
		end	else begin
			if (clk_i2c_en == 1'b1) begin
				if (start == 1'b1) begin
					req_next <= 1'b0;
					latch_stop <= stop;
					latch_ack_sda <= ack_sda;
					latch_restart <= restart;
				end
				case(fsm_state)
					STATE_IDLE: begin
						i2c_sda <= 1'b1;
						i2c_scl <= 1'b1;
						if (start == 1'b1) begin
							fsm_state <= STATE_START_L;
						end
					end

					STATE_START_L: begin
						i2c_sda <= 1'b0;
						i2c_scl <= 1'b1;
						fsm_state <= STATE_START_H;
					end
					STATE_START_H: begin
						i2c_scl <= 1'b0;
						bit_count <= 8'd7;
						fsm_state <= STATE_DATA_L;
					end

					STATE_DATA_L: begin
						i2c_scl <= 1'b0;
						if (mode_rw == `MODE_WR) begin
							i2c_sda <= data_write[bit_count];
						end else begin
							i2c_sda <= 1'b1; //high z
						end
						fsm_state <= STATE_DATA_H;
					end
					STATE_DATA_H: begin
						i2c_scl <= 1'b1;
						if (mode_rw == `MODE_RD) begin
							data_read[bit_count] <= i2c_sda_in;
						end
						if (bit_count == 8'd0) begin
							fsm_state <= STATE_ACK_L;
							req_next <= 1;
						end else begin
							fsm_state <= STATE_DATA_L;
							bit_count <= bit_count - 1;
						end
					end

					STATE_ACK_L: begin
						i2c_scl <= 1'b0;
						i2c_sda <= latch_ack_sda;
						fsm_state <= STATE_ACK_H;
					end
					STATE_ACK_H: begin
						i2c_scl <= 1'b1;
						i2c_sda <= latch_ack_sda;
						if ( latch_stop == 1'b1 ) begin
							fsm_state <= STATE_STOP_L;
						end else if ( start == 1'b1 ) begin
							bit_count <= 8'd7;
							if ( latch_restart == 1'b1 ) begin
								fsm_state <= STATE_START_L;
							end else begin
								fsm_state <= STATE_DATA_L;
							end
						end
					end

					STATE_STOP_L: begin
						i2c_scl <= 1'b0;
						i2c_sda <= 1'b0;
						fsm_state <= STATE_STOP_H;
					end
					STATE_STOP_H: begin
						i2c_scl <= 1'b1;
						fsm_state <= STATE_IDLE;
					end
				endcase
			end
		end
	end
endmodule
