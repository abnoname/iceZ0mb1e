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

module icecounter (
	input clk,
	input clk_en,
	input reset,

    input[31:0] counter_in,
    input[31:0] compare_in,

    output[31:0] counter_out,
    output[31:0] capture_out,

    input count,
    input count_en,

    input updown,

    input load,
    input res,
    input store,

    output overflow,
    output underflow,
    output compare
);

	localparam STATE_IDLE = 0;

	reg [4:0] fsm_state;

    reg[31:0] count_reg;
    reg[31:0] cmp_reg;
    reg overflow;
    reg zero;

	always @(posedge clk) begin
		if (reset == 1'b1) begin
			fsm_state <= STATE_IDLE;
            data_out <= 32'd 0;

		end	else begin
			if (clk_en == 1'b1) begin
				case(fsm_state)
					STATE_IDLE: begin
					end
				endcase
			end
		end
	end
endmodule
