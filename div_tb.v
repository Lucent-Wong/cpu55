`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:09:02 04/14/2014
// Design Name:   DIV
// Module Name:   E:/d/cpu55/div_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DIV
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module div_tb;

	// Inputs
	reg clk;
	reg [31:0] dividend;
	reg [31:0] divisor;

	// Outputs
	wire rfd;
	wire [31:0] quotient;
	wire [31:0] fractional;

	// Instantiate the Unit Under Test (UUT)
	DIV uut (
		.rfd(rfd), 
		.clk(clk), 
		.dividend(dividend), 
		.quotient(quotient), 
		.divisor(divisor), 
		.fractional(fractional)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		dividend = 0;
		divisor = 0;

		// Wait 100 ns for global reset to finish
		#100;
      dividend = 1;
		divisor = 1;
		// Add stimulus here

	end
   
	always begin
	#100;
	clk = ~clk;
	end
	
endmodule

