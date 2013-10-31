`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:07:50 10/31/2013
// Design Name:   cpu55
// Module Name:   D:/cpu55/cpu_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu55
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cpu_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire add_err;

	// Instantiate the Unit Under Test (UUT)
	cpu55 uut (
		.clk(clk), 
		.rst(rst), 
		.add_err(add_err)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#50;
      rst = 0;		
		// Add stimulus here

	end
   
	always begin
	#50
	clk = ~clk;
	end
endmodule

