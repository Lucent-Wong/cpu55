`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:05 10/29/2013 
// Design Name: 
// Module Name:    pipe_mem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pipe_mem(
	input w,
	input h,
	input b,
	input z,
	
	input clk,
	input ram_ena,
	input ram_wena,
	input [31:0] addr,
	input [31:0] ram_indata,
	output[31:0] ram_outdata,
	output AddressErr
    );
	 
wire _ram_ena;
wire [31:0] _ram_outdata;
wire [7:0] _byte_result;
wire [15:0] _hword_result;
wire [31:0] _byte_ext;
wire [31:0] _hword_ext;
wire [31:0] _ramindata;

mux4x32 #(8) byte_mux(.a(_ram_outdata[7:0]),.b(_ram_outdata[15:8]),.c(_ram_outdata[23:16]),.d(_ram_outdata[31:24]),.select(addr[1:0]),.r(_byte_result));
mux2x32 #(16) word_mux(.a(_ram_outdata[15:0]),.b(_ram_outdata[31:16]),.select(addr[1]),.r(_hword_result));

mux4x32 #(32) ramin(.a(ram_indata),.b({ram_outdata[31:16],ram_indata[15:0]}),.c({ram_outdata[31:8],ram_indata[7:0]}),.d(ram_indata),.select({b,h}),.r(_ramindata));

assign AddressErr = ~((w && ~(addr[0] || addr[1])) || (h && ~addr[0]) || b);
assign _ram_ena = (~AddressErr) && ram_ena;


ext #(8) byte_ext(.a(_byte_result),.sext(~z),.b(_byte_ext));
ext #(16) word_ext(.a(_hword_result),.sext(~z),.b(_hword_ext));

data_ram #(8, 0) dram(.clk(clk), .ram_ena(_ram_ena), .wena(ram_wena), .addr(addr[9:2]/*should change when the size of memory changed*/), .data_in(_ramindata),
								 .data_out(_ram_outdata),/*.AddressError(AddressErr),*/
								 .w(w),.h(h),.b(b),.z(z));
								 
mux4x32 #(32) ram_out(.a(32'bz),.b(_byte_ext),.c(_hword_ext),.d(_ram_outdata),.select({(b||w),(h||w)}),.r(ram_outdata));				 
				
endmodule