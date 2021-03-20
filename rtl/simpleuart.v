//
// iceZ0mb1e - FPGA 8-Bit TV80 SoC for Lattice iCE40
// with complete open-source toolchain flow using yosys and SDCC
//
// Copyright (c) 2021 Franz Neumann (netinside2000@gmx.de)
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

module simpleuart(
	input clk,
	input reset,

	input[15:0] baud_divider,

	input[7:0] data_write,
    input transmit,
    output ready,
    
	output[7:0] data_read,
    output received,

    output tx,
	input  rx
);

	localparam STATE_IDLE = 0;
	localparam STATE_RX_STARTBIT = 1;
	localparam STATE_RX_RECEIVE = 2;
    localparam STATE_RX_STOPBIT = 3;
	localparam STATE_TX_STARTBIT = 4;
    localparam STATE_TX_SEND = 5;
    localparam STATE_TX_STOPBIT = 6;

	reg [4:0] fsm_state = STATE_IDLE;
	reg [7:0] bit_count;

	reg [7:0] data_read;
    reg [7:0] output_reg;
    reg [7:0] input_reg;

	wire req_next;
    wire clk_baud;
    wire clk_sample;

    reg tx;
    reg rx_sampled;
    reg received;
    wire ready = (fsm_state == STATE_IDLE) ? 1'b 1 : 1'b 0;

    reg [1:0] sync_rx;
    reg [1:0] sync_transmit;

    reg req_start_transmit;

	clk_enable baud_clock (
		.reset(fsm_state == STATE_IDLE),
		.divider(baud_divider),
		.clk_in(clk),
		.clk_en(clk_baud)
	);

	clk_enable sample_clock (
		.reset(clk_baud),
		.divider( {1'b 0, baud_divider[15:1] } ),
		.clk_in(clk),
		.clk_en(clk_sample)
	);

	always @(posedge clk) begin
		if (reset == 1'b1) begin
			fsm_state <= STATE_IDLE;
		end	else begin
            sync_rx <= {sync_rx[0], rx};
            sync_transmit <= {sync_transmit[0], transmit};

            if(sync_transmit == 2'b 01)begin
                req_start_transmit <= 1'b 1;
            end

            if(clk_sample == 1'b 1) begin
                rx_sampled <= rx;
            end

            case(fsm_state)
                STATE_IDLE: begin
                    bit_count <= 8'd 8;
                    tx <= 1'b 1;
                    if( sync_rx == 2'b 10 ) begin
                        received <= 1'b 0;
                        input_reg <= 8'h 00;
                        fsm_state <= STATE_RX_STARTBIT;
                    end
                    if( req_start_transmit == 1'b 1 ) begin
                        req_start_transmit <= 1'b 0;
                        received <= 1'b 0;
                        tx <= 1'b 0;
                        output_reg <= data_write;
                        fsm_state <= STATE_TX_STARTBIT;
                    end
                end

                STATE_RX_STARTBIT: begin
                    if( clk_baud == 1'b 1 ) begin
                        fsm_state <= STATE_RX_RECEIVE;
                    end
                end

                STATE_RX_RECEIVE: begin
                    if( clk_baud == 1'b 1 ) begin
                        input_reg <= { input_reg[6:0], rx_sampled };
                        bit_count <= bit_count - 8'd 1;
                        if( bit_count == 8'd 1 ) begin
                            fsm_state <= STATE_RX_STOPBIT; 
                        end
                    end
                end

                STATE_RX_STOPBIT: begin
                    if( clk_baud == 1'b 1 ) begin
                        received <= 1'b 1;
                        data_read <= input_reg;
                        fsm_state <= STATE_IDLE; 
                    end
                end

                STATE_TX_STARTBIT: begin
                    tx <= 1'b 0;
                    if( clk_baud == 1'b 1 ) begin
                        tx <= output_reg[0];
                        output_reg <= { 1'b 0, output_reg[7:1] };
                        fsm_state <= STATE_TX_SEND;
                    end
                end

                STATE_TX_SEND: begin
                    if( clk_baud == 1'b 1 ) begin
                        tx <= output_reg[0];
                        output_reg <= { 1'b 0, output_reg[7:1] };
                        bit_count <= bit_count - 8'd 1;
                        if( bit_count == 8'd 1 ) begin
                            tx <= 1'b 1;
                            fsm_state <= STATE_TX_STOPBIT; 
                        end
                    end 
                end

                STATE_TX_STOPBIT: begin
                    if( clk_baud == 1'b 1 ) begin
                        fsm_state <= STATE_IDLE; 
                    end
                end
            endcase
		end
	end
endmodule
