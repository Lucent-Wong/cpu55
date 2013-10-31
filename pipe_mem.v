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

		
data_ram #(7, 0) dram(.clk(clk), .ram_ena(ram_ena), .wena(ram_wena), .addr(addr[6:0]), .data_in(ram_indata),
								 .data_out(ram_outdata),.AddressError(AddressErr),
								 .w(w),.h(h),.b(b),.z(z));
endmodule