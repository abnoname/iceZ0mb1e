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

module i2cmastertoZ80 (
    input clk,
    input reset_n,
    inout[7:0] data_out,
    input[7:0] data_in,
    input cs_n,
    input rd_n,
    input wr_n,
    input[3:0] addr,
	output i2c_scl,
	inout i2c_sda
);

    wire read_sel = !cs_n & !rd_n & wr_n;
    wire write_sel = !cs_n & rd_n & !wr_n;

	wire[7:0] reg_status;
	reg[15:0] reg_byte_count = 16'h0;
	reg[7:0] reg_address = 8'h0;
	reg[7:0] reg_command = 8'h0;
	reg[7:0] reg_data_wr = 8'h0;
	wire[7:0] reg_data_rd;
	reg[7:0] reg_prescale_low = 8'h0;
	reg[7:0] reg_prescale_high = 8'h0;

    wire[7:0] read_data =
        (addr == 4'h00) ? reg_status :
		(addr == 4'h02) ? reg_address :
		(addr == 4'h03) ? reg_command :
		(addr == 4'h04) ? reg_data_rd :
		(addr == 4'h05) ? reg_data_wr[7:0] :
		(addr == 4'h06) ? reg_byte_count[7:0] :
		(addr == 4'h07) ? reg_byte_count[15:8] :
        8'h00;

	assign data_out = (read_sel) ? read_data : 8'bz;

    always @(posedge clk)
    begin
        if ( write_sel ) begin
            case(addr)
				4'h02 : reg_address <= data_in;
				4'h03 : reg_command <= data_in;
				4'h05 : reg_data_wr[7:0] <= data_in;
				4'h06 : reg_byte_count[7:0] <= data_in;
				4'h07 : reg_byte_count[15:8] <= data_in;
            endcase
        end
    end

	wire i2c_clk_en;

	clk_enable i2c_clk_divider (
		.reset(!reset_n),
		.divider(30/2),
		.clk_in(clk),
		.clk_en(i2c_clk_en)
	);

	simplei2c master (
		.clk			(clk),
		.clk_i2c_en		(i2c_clk_en),
		.reset			(!reset_n),

		.req_next_byte	(reg_status[1]),
		.xfer_ready		(reg_status[0]),

		.start			(reg_command[0]),
		.restart		(reg_command[1]),
		.mode_rw		(reg_command[2]), //write = 0, read = 1

		.byte_count		(reg_byte_count),
		.slave_addr		(reg_address[6:0]),
		.data_write		(reg_data_wr),
		.data_read		(reg_data_rd),

		.i2c_sda_io			(i2c_sda),
		.i2c_scl_o			(i2c_scl)
	);

endmodule
