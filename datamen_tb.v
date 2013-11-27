`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:59 10/29/2013
// Design Name:   data_ram
// Module Name:   D:/cpu55/datamen_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: data_ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module datamen_tb;

	// Inputs
	reg clk;
	reg ram_ena;
	reg wena;
	reg w;
	reg h;
	reg b;
	reg z;
	reg [19:0] addr;
	reg [31:0] data_in;

	// Outputs
	wire [31:0] data_out;
	wire AddressError;

	// Instantiate the Unit Under Test (UUT)
	data_ram #(10,2) uut (
		.clk(clk), 
		.ram_ena(ram_ena), 
		.wena(wena), 
		.w(w), 
		.h(h), 
		.b(b), 
		.z(z), 
		.addr(addr), 
		.data_in(data_in), 
		.data_out(data_out), 
		.AddressError(AddressError)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		ram_ena = 0;
		wena = 0;
		w = 0;
		h = 0;
		b = 0;
		z = 0;
		addr = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		//for write wena = 1
		
		#50;
      ram_ena=1;
		wena =1;
		w=1;
		h=0;
		b=0;
		z=0;
		addr = 32'd1008;
		data_in = 32'h00000001;
		
		#100;
      ram_ena=1;
		wena =1;
		w=1;
		h=0;
		b=0;
		z=0;
		addr = 32'd980;
		data_in = 32'h000000d4;
		
		#100;
      ram_ena=1;
		wena =0;
		w=1;
		h=0;
		b=0;
		z=0;
		addr = 32'd1008;		
		
		#100;
      ram_ena=1;
		wena =0;
		w=1;
		h=0;
		b=0;
		z=0;
		addr = 32'd980;
		//data_in = 32'h00000001;
		
		/*#100;
		w=0;
		h=1;
		addr = 4;
		data_in = 32'hffff0000;
		
		#100
		h=0;
		b=1;
		addr = 7;
		data_in = 32'hffff0000;*/
		// Add stimulus here
		//for write wena =0;
		/*#100
		wena=1;
		w=1;
		h=0;
		b=0;
		z=0;
		addr = 0;
		data_in = 32'h0000ffff;
		
		#100;
		w=0;
		h=1;
		addr = 4;
		data_in = 32'h0000ffff;
		
		#100
		h=0;
		b=1;
		addr = 7;
		data_in = 32'h0000ffff;
		//for read
		#100
		wena=0;
		w=1;
		h=0;
		b=0;
		z=1;
		addr = 0;	
		
		#100;
		w=0;
		h=1;
		addr = 4;		
		
		#100
		h=0;
		b=1;
		addr = 7;	*/	
	end
   
	always begin
		#50;
		clk=~clk;
	end
   
endmodule

