`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:03:02 10/12/2013
// Design Name:   myreg
// Module Name:   D:/cpu55/myreg_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: myreg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module myreg_tb;

	// Inputs
	reg en;
	reg rst;
	reg clk;
	reg [31:0] data_in;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	myreg uut (
		.wen(en), 
		.rst(rst), 
		.clk(clk), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	localparam T=40;
	
	initial begin
		// Initialize Inputs
		en = 0;
		rst = 0;
		clk = 0;
		data_in = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
		en = 1;
      data_in = 32'hffffffff;  
		#100;
		en = 0;
		data_in = 32'hffff0000;
		// Add stimulus here
		
	end
	
	always begin
		#(T/2);
		clk = ~clk;
	end
      
endmodule

