`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:53 10/14/2013 
// Design Name: 
// Module Name:    pipe_exe 
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
module pipe_exe(
input w,
input h,
input b,

output e_w,
output e_h,
output e_b
    );

alu alu();


assign e_w = w;
assign e_h = h;
assign e_b = b;

endmodule
