`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:31 10/12/2013 
// Design Name: 
// Module Name:    mux32x32 
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
module mux32x32(
	input [4:0] select,
	input [31:0] data_in_0,
	input [31:0] data_in_1,
	input [31:0] data_in_2,
	input [31:0] data_in_3,
	input [31:0] data_in_4,
	input [31:0] data_in_5,
	input [31:0] data_in_6,
	input [31:0] data_in_7,
	input [31:0] data_in_8,
	input [31:0] data_in_9,
	input [31:0] data_in_10,
	input [31:0] data_in_11,
	input [31:0] data_in_12,
	input [31:0] data_in_13,
	input [31:0] data_in_14,
	input [31:0] data_in_15,
	input [31:0] data_in_16,
	input [31:0] data_in_17,
	input [31:0] data_in_18,
	input [31:0] data_in_19,
	input [31:0] data_in_20,
	input [31:0] data_in_21,
	input [31:0] data_in_22,
	input [31:0] data_in_23,
	input [31:0] data_in_24,
	input [31:0] data_in_25,
	input [31:0] data_in_26,
	input [31:0] data_in_27,
	input [31:0] data_in_28,
	input [31:0] data_in_29,
	input [31:0] data_in_30,
	input [31:0] data_in_31,	
	output reg [31:0] data_out
    );
	 
	 always @(*)
	 begin
		case(select)
			5'b00000:begin
			data_out = data_in_0;
			end
			5'b00001:begin
			data_out = data_in_1;
			end
			5'b00010:begin
			data_out = data_in_2;
			end
			5'b00011:begin
			data_out = data_in_3;
			end
			5'b00100:begin
			data_out = data_in_4;
			end
			5'b00101:begin
			data_out = data_in_5;
			end
			5'b00110:begin
			data_out = data_in_6;
			end
			5'b00111:begin
			data_out = data_in_7;
			end
			5'b01000:begin
			data_out = data_in_8;
			end
			5'b01001:begin
			data_out = data_in_9;
			end
			5'b01010:begin
			data_out = data_in_10;
			end
			5'b01011:begin
			data_out = data_in_11;
			end
			5'b01100:begin
			data_out = data_in_12;
			end
			5'b01101:begin
			data_out = data_in_13;
			end
			5'b01110:begin
			data_out = data_in_14;
			end
			5'b01111:begin
			data_out = data_in_15;
			end
			5'b10000:begin
			data_out = data_in_16;
			end
			5'b10001:begin
			data_out = data_in_17;
			end
			5'b10010:begin
			data_out = data_in_18;
			end
			5'b10011:begin
			data_out = data_in_19;
			end
			5'b10100:begin
			data_out = data_in_20;
			end
			5'b10101:begin
			data_out = data_in_21;
			end
			5'b10110:begin
			data_out = data_in_22;
			end
			5'b10111:begin
			data_out = data_in_23;
			end
			5'b11000:begin
			data_out = data_in_24;
			end
			5'b11001:begin
			data_out = data_in_25;
			end
			5'b11010:begin
			data_out = data_in_26;
			end
			5'b11011:begin
			data_out = data_in_27;
			end
			5'b11100:begin
			data_out = data_in_28;
			end
			5'b11101:begin
			data_out = data_in_29;
			end
			5'b11110:begin
			data_out = data_in_30;
			end
			5'b11111:begin
			data_out = data_in_31;
			end
		endcase
	 end

endmodule
