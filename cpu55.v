`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:45 10/13/2013 
// Design Name: 
// Module Name:    cpu55 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cpu55(
		input clk,
		input rst,
		//修改imem时的数据
		//input [31:0] iram_indata
		input [31:0] BEPU_FEPU_data,
		input [31:0] bc_cpu_data,
		output [31:0] cpu_bc_data, //cpu_bc_data
		output [31:0] cpu_bc_addr,
		output cpu_bc_rw
    );

dffe #(32) pcreg();
pipe_if pipe_if();
pipe_id pipe_id();
pipe_exe pipe_exe();
pipe_mem pipemem();
pipe_wb pipe_wb();
endmodule
