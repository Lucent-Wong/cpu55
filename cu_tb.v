`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:28:18 10/29/2013
// Design Name:   controlunit
// Module Name:   D:/cpu55/cu_tb.v
// Project Name:  cpu55
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controlunit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cu_tb;

	// Inputs
	reg [5:0] op;
	reg [5:0] func;
	reg zero;
	reg negtive;
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;

	// Outputs
	wire rt_sel;
	wire w;
	wire h;
	wire b;
	wire z;
	wire [3:0] aluc;
	wire wrf;
	wire sext_i;
	wire sext_s;
	wire shift;
	wire regwa;
	wire immc;
	wire wena;
	wire wdc;
	wire aludc;
	wire [1:0] pcsource;

	// Instantiate the Unit Under Test (UUT)
	controlunit uut (
		.op(op), 
		.func(func), 
		.zero(zero), 
		.negtive(negtive), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.rt_sel(rt_sel), 
		.w(w), 
		.h(h), 
		.b(b), 
		.z(z), 
		.aluc(aluc), 
		.wrf(wrf), 
		.sext_i(sext_i), 
		.sext_s(sext_s), 
		.shift(shift), 
		.regwa(regwa), 
		.immc(immc), 
		.wena(wena), 
		.wdc(wdc), 
		.aludc(aludc), 
		.pcsource(pcsource)
	);

	initial begin
		// Initialize Inputs
		op = 0;
		func = 0;
		zero = 0;
		negtive = 0;
		rs = 0;
		rt = 0;
		rd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

