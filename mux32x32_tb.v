`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:02:48 10/12/2013
// Design Name:   mux32x32
// Module Name:   D:/cpu55/mux32x32_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux32x32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux32x32_tb;

	// Inputs
	reg [4:0] select;
	reg [31:0] data_in_0;
	reg [31:0] data_in_1;
	reg [31:0] data_in_2;
	reg [31:0] data_in_3;
	reg [31:0] data_in_4;
	reg [31:0] data_in_5;
	reg [31:0] data_in_6;
	reg [31:0] data_in_7;
	reg [31:0] data_in_8;
	reg [31:0] data_in_9;
	reg [31:0] data_in_10;
	reg [31:0] data_in_11;
	reg [31:0] data_in_12;
	reg [31:0] data_in_13;
	reg [31:0] data_in_14;
	reg [31:0] data_in_15;
	reg [31:0] data_in_16;
	reg [31:0] data_in_17;
	reg [31:0] data_in_18;
	reg [31:0] data_in_19;
	reg [31:0] data_in_20;
	reg [31:0] data_in_21;
	reg [31:0] data_in_22;
	reg [31:0] data_in_23;
	reg [31:0] data_in_24;
	reg [31:0] data_in_25;
	reg [31:0] data_in_26;
	reg [31:0] data_in_27;
	reg [31:0] data_in_28;
	reg [31:0] data_in_29;
	reg [31:0] data_in_30;
	reg [31:0] data_in_31;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	mux32x32 uut (
		.select(select), 
		.data_in_0(data_in_0), 
		.data_in_1(data_in_1), 
		.data_in_2(data_in_2), 
		.data_in_3(data_in_3), 
		.data_in_4(data_in_4), 
		.data_in_5(data_in_5), 
		.data_in_6(data_in_6), 
		.data_in_7(data_in_7), 
		.data_in_8(data_in_8), 
		.data_in_9(data_in_9), 
		.data_in_10(data_in_10), 
		.data_in_11(data_in_11), 
		.data_in_12(data_in_12), 
		.data_in_13(data_in_13), 
		.data_in_14(data_in_14), 
		.data_in_15(data_in_15), 
		.data_in_16(data_in_16), 
		.data_in_17(data_in_17), 
		.data_in_18(data_in_18), 
		.data_in_19(data_in_19), 
		.data_in_20(data_in_20), 
		.data_in_21(data_in_21), 
		.data_in_22(data_in_22), 
		.data_in_23(data_in_23), 
		.data_in_24(data_in_24), 
		.data_in_25(data_in_25), 
		.data_in_26(data_in_26), 
		.data_in_27(data_in_27), 
		.data_in_28(data_in_28), 
		.data_in_29(data_in_29), 
		.data_in_30(data_in_30), 
		.data_in_31(data_in_31), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		select = 0;
		data_in_0 = 0;
		data_in_1 = 1;
		data_in_2 = 2;
		data_in_3 = 3;
		data_in_4 = 4;
		data_in_5 = 5;
		data_in_6 = 6;
		data_in_7 = 7;
		data_in_8 = 8;
		data_in_9 = 9;
		data_in_10 = 10;
		data_in_11 = 11;
		data_in_12 = 12;
		data_in_13 = 13;
		data_in_14 = 14;
		data_in_15 = 15;
		data_in_16 = 16;
		data_in_17 = 17;
		data_in_18 = 18;
		data_in_19 = 19;
		data_in_20 = 20;
		data_in_21 = 21;
		data_in_22 = 22;
		data_in_23 = 23;
		data_in_24 = 24;
		data_in_25 = 25;
		data_in_26 = 26;
		data_in_27 = 27;
		data_in_28 = 28;
		data_in_29 = 29;
		data_in_30 = 30;
		data_in_31 = 31;
		select = 5'b00000;
		// Wait 100 ns for global reset to finish
		#100;
      while(select < 64)
		begin
		#100;
		select = select + 1;
		end
		// Add stimulus here

	end
      
endmodule

