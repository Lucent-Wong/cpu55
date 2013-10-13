`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:19:52 10/12/2013
// Design Name:   decoder
// Module Name:   D:/cpu55/decoder_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_tb;

	// Inputs
	reg en;
	reg [2:0] data_in;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	decoder #(3,8)uut (
		.en(en), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		en = 1;
		// Add stimulus here
		while(data_in<8)
		begin
			#100;
			data_in = data_in + 1;
		end
	end
      
endmodule

