`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:37:59 10/12/2013 
// Design Name: 
// Module Name:    myreg 
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
module myreg(
	input wen,
	input rst,
	input clk,
	input [31:0] data_in,
	output reg [31:0] data_out
    );

	always @(negedge clk or posedge rst   )
	begin
		if(rst)
		begin
			data_out <= 32'b0;
		end
		else
		begin
			if(wen)
			begin
				data_out <= data_in;
			end
		end
	end

endmodule
