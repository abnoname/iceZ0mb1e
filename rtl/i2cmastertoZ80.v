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

// Registers:

// | Addr  | Name          |   Bit 7   |   Bit 6   |   Bit 5   |   Bit 4   |   Bit 3   |   Bit 2   |   Bit 1   |   Bit 0   |
// |-------|---------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
// | 0x00  | Status        |     -     |     -     |     -     |     -     | miss_ack  |  bus_act  | bus_cont  |   busy    |
// | 0x02  | Cmd Addr      |     -     |                               cmd_address[6:0]                                    |
// | 0x03  | Command       |     -     |     -     |     -     | cmd_stop  |     -     | cmd_write | cmd_read  | cmd_start |
// | 0x04  | Data WR       |                                           data[7:0]                                           |
// | 0x05  | Data RD       |                                           data[7:0]                                           |
// | 0x06  | Prescale Low  |                                         prescale[7:0]                                         |
// | 0x07  | Prescale High |                                         prescale[15:8]                                        |

module i2cmastertoZ80 (
    input clk,
    input reset_n,
    inout[7:0] data_out,
    input[7:0] data_in,
    input cs_n,
    input rd_n,
    input wr_n,
    input[2:0] addr,
	output i2c_scl_oe,
	output i2c_scl_o,
	output i2c_sda_oe,
	output i2c_sda_o,
	input i2c_sda_i
);

    wire read_sel = !cs_n & !rd_n & wr_n;
    wire write_sel = !cs_n & rd_n & !wr_n;

	wire[7:0] reg_status;
	reg[7:0] reg_cmd_addr;
	reg[7:0] reg_command;
	reg[7:0] reg_data_wr;
	wire[7:0] reg_data_rd;
	reg[7:0] reg_prescale_low;
	reg[7:0] reg_prescale_high;

    wire[7:0] read_data =
        (addr == 3'h00) ? reg_status :
		(addr == 3'h02) ? reg_cmd_addr :
		(addr == 3'h03) ? reg_command :
		(addr == 3'h04) ? reg_data_wr :
		(addr == 3'h05) ? reg_data_rd :
		(addr == 3'h06) ? reg_prescale_low :
        (addr == 3'h07) ? reg_prescale_low :
        8'h00;

	assign data_out = (read_sel) ? read_data : 8'bz;

    always @(posedge clk)
    begin
        if ( write_sel ) begin
            case(addr)
				3'h02 : reg_cmd_addr <= data_in;
				3'h03 : reg_command <= data_in;
				3'h04 : reg_data_wr <= data_in;
				3'h06 : reg_prescale_low <= data_in;
        		3'h07 : reg_prescale_low <= data_in;
            endcase
        end
    end

	i2c_master master (
		.clk				(clk),
		.rst				(!reset_n),

		/*
		* Host interface
		*/
		.cmd_address		(reg_cmd_addr[6:0]),
		.cmd_start			(reg_command[0]),
		.cmd_read			(reg_command[1]),
		.cmd_write			(reg_command[2]),
		.cmd_write_multiple	(1'b0),
		.cmd_stop			(reg_command[4]),
		.cmd_valid			(1'b0),
		.cmd_ready			(),

		.data_in			(reg_data_wr),
		.data_in_valid		(1'b0),
		.data_in_ready		(),
		.data_in_last		(1'b0),

		.data_out			(reg_data_rd),
		.data_out_valid		(),
		.data_out_ready		(1'b0),
		.data_out_last		(),

		/*
		* I2C interface
		*/
		.scl_i				(1'b0),
		.scl_o				(i2c_scl_o),
		.scl_t				(i2c_scl_oe),
		.sda_i				(i2c_sda_i),
		.sda_o				(i2c_sda_o),
		.sda_t				(i2c_sda_oe),

		/*
		* Status
		*/
		.busy				(reg_status[0]),
		.bus_control		(reg_status[1]),
		.bus_active			(reg_status[2]),
		.missed_ack			(reg_status[3]),

		/*
		* Configuration
		*/
		.prescale			({reg_prescale_high, reg_prescale_low}),
		.stop_on_idle		(1'b0)
	);

endmodule
