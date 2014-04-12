`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:14:06 04/12/2014
// Design Name:   iram_ip
// Module Name:   F:/Study/cpu55/iram_ip_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: iram_ip
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module iram_tb;

	// Inputs
	reg clka;
	reg [9:0] addra;
	integer i;
	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	iram_ip uut (
		.clka(clka),
		.ena(1'b1),
		.addra(addra), 
		.douta(douta)
	);

	always begin
	 #50;
	 clka = ~clka;
	end
	
	initial begin
		// Initialize Inputs
		clka = 0;
		addra = 0;
		i = 1;
		// Wait 100 ns for global reset to finish
		#100;
      while(i<=30)
		begin
			#100;
			i = i + 1;
			addra = addra + 1;
		end
		// Add stimulus here

	end
      
endmodule