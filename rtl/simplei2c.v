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

	output req_next_byte,
	output xfer_ready,

	input start,
	input mode_rw,

	input[7:0] byte_count,
	input[6:0] slave_addr,
	input[7:0] data_write,
	output[7:0] data_read,

	inout i2c_sda_io,
	output i2c_scl_o
);

	localparam STATE_IDLE = 0;
	localparam STATE_START_L = 1;
	localparam STATE_START_H = 2;
	localparam STATE_ADDR_L = 3;
	localparam STATE_ADDR_H = 4;
	localparam STATE_ACK_L = 5;
	localparam STATE_ACK_H = 6;
	localparam STATE_TX_DATA_L = 7;
	localparam STATE_TX_DATA_H = 8;
	localparam STATE_RX_DATA_L = 9;
	localparam STATE_RX_DATA_H = 10;
	localparam STATE_STOP_L = 11;
	localparam STATE_STOP_H = 12;

    `define MODE_WR 1'b0
    `define MODE_RD 1'b1

	reg [7:0] data_read;
	reg req_next_byte;
	reg xfer_ready;

	reg [4:0] fsm_state;
	reg [7:0] bit_count;
	reg [7:0] local_rw_addr;
	reg [7:0] local_data;
	reg [7:0] local_byte_count;
	reg local_mode_rw;
	reg i2c_sda;
	reg i2c_scl;
	wire i2c_scl_o = i2c_scl;

	assign i2c_sda_io = ((i2c_sda) == 1'b0) ? 1'b0 : 1'bz;

	always @(posedge clk) begin
		if (reset == 1'b1) begin
			fsm_state <= STATE_IDLE;
			req_next_byte <= 1'b0;
			xfer_ready <= 1'b0;
		end	else begin
			if (clk_i2c_en == 1'b1) begin
				case(fsm_state)
					STATE_IDLE: begin
						i2c_sda <= 1'b1;
						i2c_scl <= 1'b1;
						if (start) begin
							xfer_ready <= 1'b0;
							req_next_byte <= 1'b0;
							fsm_state <= STATE_START_L;
						end
					end

					STATE_START_L: begin
						i2c_sda <= 1'b0;
						i2c_scl <= 1'b1;
						local_rw_addr <= {slave_addr, mode_rw};
						local_byte_count <= byte_count;
						local_mode_rw <= mode_rw;
						fsm_state <= STATE_START_H;
					end
					STATE_START_H: begin
						i2c_scl <= 1'b0;
						bit_count <= 8'd7;
						fsm_state <= STATE_ADDR_L;
					end

					STATE_ADDR_L: begin
						i2c_scl <= 1'b0;
						i2c_sda <= local_rw_addr[bit_count];
						fsm_state <= STATE_ADDR_H;
					end
					STATE_ADDR_H: begin
						i2c_scl <= 1;
						if (bit_count == 8'd0) begin
							fsm_state <= STATE_ACK_L;
						end
						else begin
							fsm_state <= STATE_ADDR_L;
							bit_count <= bit_count - 1;
						end
					end

					STATE_ACK_L: begin
						i2c_scl <= 1'b0;
						i2c_sda <= 1'b1;
						fsm_state <= STATE_ACK_H;
					end
					STATE_ACK_H: begin
						i2c_scl <= 1'b1;
						i2c_sda <= 1'b1;
						if (local_byte_count == 8'd0) begin
							xfer_ready <= 1'b1;
							fsm_state <= STATE_STOP_L;
						end else begin
							req_next_byte <= 1'b0;
							local_data <= data_write;
							bit_count <= 8'd7;
							if (local_mode_rw == `MODE_WR) begin
								fsm_state <= STATE_TX_DATA_L;
							end else begin
								fsm_state <= STATE_RX_DATA_L;
							end
						end
					end

					STATE_TX_DATA_L: begin
						i2c_scl <= 1'b0;
						i2c_sda <= local_data[bit_count];
						fsm_state <= STATE_TX_DATA_H;
					end
					STATE_TX_DATA_H: begin
						i2c_scl <= 1'b1;
						if (bit_count == 0) begin
							req_next_byte <= 1;
							if ( (start == 1'b1) || (local_byte_count == 8'd1) ) begin //last byte
								fsm_state <= STATE_ACK_L;
								local_byte_count <= local_byte_count - 1;
							end
						end
						else begin
							fsm_state <= STATE_TX_DATA_L;
							bit_count <= bit_count - 1;
						end
					end

					STATE_RX_DATA_L: begin
						fsm_state <= STATE_RX_DATA_H;
						i2c_scl <= 1'b0;
						local_data[bit_count] <= i2c_sda_io;
					end

					STATE_RX_DATA_H: begin
						i2c_scl <= 1;
						if (bit_count == 8'd0) begin
							fsm_state <= STATE_ACK_L;
							data_read[7:1] <= local_data[7:1];
							data_read[0] <= i2c_sda_io;
							local_byte_count <= local_byte_count - 1;
						end
						else begin
							fsm_state <= STATE_RX_DATA_L;
							bit_count <= bit_count - 1;
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
