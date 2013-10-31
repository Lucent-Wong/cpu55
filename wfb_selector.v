`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:34 10/11/2013 
// Design Name: 
// Module Name:    wfb_selector 
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
//2013 10 29 abandoned
module whb_selector(
		input [31:0] data_in,
		//input sign_extend,
		input w,//word
		input h,//half word
		input b,//bype		
		input z,//zero_extend
		output reg [31:0] data_out
    );
	
	
	always @(*)
	begin
		case({w,h,b,z})
		4'b0010: 
			begin
				data_out[31:8] = 24'h000000;
				data_out[7:0] = data_in[7:0];
			end
		4'b0011:
			begin
				data_out[31:8] = {(24){data_in[7]}};
				data_out[7:0] = data_in[7:0];
			end
		4'b0100:
			begin
				data_out[31:16] = 16'h0000;
				data_out[15:0] = data_in[15:0];
			end
		4'b0101:
			begin
				data_out[31:16] = {(16){data_in[15]}};
				data_out[15:0] = data_in[15:0];
			end		
		default:
			begin
				data_out=data_in;
			end	
		endcase
	end
	
endmodule
