`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:52:40 10/12/2013
// Design Name:   wfb_selector
// Module Name:   D:/cpu55/wfb_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wfb_selector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module whb_tb;

	// Inputs
	reg [31:0] data_in;
	reg sign_extend;
	reg w;
	reg h;
	reg b;
	reg z;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	whb_selector uut (
		.data_in(data_in), 
		.sign_extend(sign_extend), 
		.w(w), 
		.h(h), 
		.b(b), 
		.z(z), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		data_in = 0;
		sign_extend = 0;
		w = 0;
		h = 0;
		b = 0;
		z = 0;
		data_in = 32'hf0f0f0f0;
		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		
		w = 1;
		h = 0;
		b = 0;
		z = 0;
		#100;
		
		w = 1;
		h = 0;
		b = 0;
		z = 1;
		#100;
		
		w = 0;
		h = 1;
		b = 0;
		z = 0;
		#100;

		w = 0;
		h = 1;
		b = 0;
		z = 1;
		#100;
		
		w = 0;
		h = 0;
		b = 1;
		z = 0;
		#100;
		
		w = 0;
		h = 0;
		b = 1;
		z = 1;
		#100;
	end
      
endmodule

