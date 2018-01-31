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

module simpleio (
    input clk,
    input reset_n,
    inout[7:0] data_out,
    input[7:0] data_in,
    input cs_n,
    input rd_n,
    input wr_n,
    input[1:0] addr,
    inout[7:0] P1,
    inout[7:0] P2
);
    reg[7:0] out_port_1, out_port_2;

    //0 = write, 1 = read
    reg mode_port_1, mode_port_2;

    assign P1 = (mode_port_1 == 1'b 0) ? out_port_1 : 1'bz;
    assign P2 = (mode_port_2 == 1'b 0) ? out_port_2 : 1'bz;

    assign data_out =
        (!cs_n & !rd_n & wr_n & (addr==2'b00)) ? P1 :
        (!cs_n & !rd_n & wr_n & (addr==2'b01)) ? P2 :
        8'bz;

    always @(posedge clk)
    begin
        if ( !cs_n & rd_n & !wr_n ) begin
            case(addr)
                2'b 00 : out_port_1 <= data_in;
                2'b 01 : out_port_2 <= data_in;
                2'b 11 :
                    begin
                        mode_port_1 <= data_in[0];
                        mode_port_2 <= data_in[1];
                    end
            endcase
        end
    end

endmodule
