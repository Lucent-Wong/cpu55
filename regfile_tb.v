`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:37:51 10/12/2013
// Design Name:   regfile
// Module Name:   D:/cpu55/regfile_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regfile_tb;

	// Inputs
	reg clk;
	reg rst;
	reg wen;
	reg [4:0] raddr1;
	reg [4:0] raddr2;
	reg [4:0] waddr;
	reg [31:0] wdata;

	// Outputs
	wire [31:0] rdata1;
	wire [31:0] rdata2;

	// Instantiate the Unit Under Test (UUT)
	regfile uut (
		.clk(clk), 
		.rst(rst), 
		.wen(wen), 
		.raddr1(raddr1), 
		.raddr2(raddr2), 
		.waddr(waddr), 
		.wdata(wdata), 
		.rdata1(rdata1), 
		.rdata2(rdata2)
	);

	localparam T = 100;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		wen = 0;
		raddr1 = 0;
		raddr2 = 0;
		waddr = 0;
		wdata = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		#100;
		rst =0;
      wen = 1;
		wdata = 0;
		while(waddr<5'b11111)
		begin
		#100
		raddr1 = raddr1 +1;
		raddr2 = raddr2 +1;
		wdata = wdata + 1;
		waddr = waddr +1;
		end
		
		#100
		wen = 0;
		waddr =0;
		while(waddr<5'b11111)
		begin
		#100
		raddr1 = raddr1 +1;
		raddr2 = raddr2 +1;
		wdata = wdata + 1;
		waddr = waddr +1;
		end
		
		#100
		wen = 0;
		waddr =0;
		while(waddr<5'b11111)
		begin
		#100
		raddr1 = raddr1 +1;
		raddr2 = raddr2 +1;
		wdata = wdata + 1;
		waddr = waddr +1;
		end
		// Add stimulus here

	end
   
	always begin
	#(T/2);
	clk = ~clk;
	end
   
endmodule

