`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:25 03/02/2014
// Design Name:   cpu_with_cp0
// Module Name:   F:/Study/cpu55/cpu_with_cp0_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_with_cp0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cpu_with_cp0_tb;

	// Inputs
	reg clk;
	reg rst;

	// Instantiate the Unit Under Test (UUT)
	cpu_with_cp0 uut (
		.clk_o(clk), 
		.rst(rst)
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

