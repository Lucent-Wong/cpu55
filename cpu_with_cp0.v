`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:41 12/11/2013 
// Design Name: 
// Module Name:    cpu_with_cp0 
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
module cpu_with_cp0(
							input clk,
							input rst
    );
	 
	 
wire mfc0;
wire mtc0;
wire mthi;
wire mfhi;
wire mtlo;
wire mflo;
wire eret;
wire [4:0] rda_cp0;	 
wire [31:0] data_from_cp0; 
wire [31:0] data_2_cp0;
wire [31:0] epc_from_cp0;
wire addr_err;
wire [31:0] npc_from_cpu;
wire [31:0] rs2hilo;
wire [31:0] data_from_hi;
wire [31:0] data_from_lo;
wire [31:0] data_2_cpu;

dffe #(32) reg_hi(.clk(clk), .rst(rst), .ena(mthi), .data_in(data2hi), .data_out(data_from_hi));
dffe #(32) reg_lo(.clk(clk), .rst(rst), .ena(mtlo), .data_in(data2lo), .data_out(data_from_lo));

wire [31:0] data2hi;
wire [31:0] data2lo;

mux2x32 hiselect(.a(/*乘除法器结果*/),.b(rs2hilo),.select(mthi),.r(data2hi));
mux2x32 loselect(.a(/*乘除法器结果*/),.b(rs2hilo),.select(mtlo),.r(data2lo));
CP0 cp0(
	 .clk(clk),
	 .rst(rst),
    //-- CP0 Functionality --//
    .Mfc0(mfc0),                    // CPU instruction is Mfc0
    .Mtc0(mtc0),                    // CPU instruction is Mtc0
    
    .ERET(eret),                    // Instruction is ERET (Exception Return)
    .Rd(rda_cp0),                // Specifies Cp0 register
    //input  [2:0] Sel,               // Specifies Cp0 'select'
    .Reg_In(data_2_cp0),           // Data from GP register to replace CP0 register
    .Reg_Out(data_from_cp0),      // Data from CP0 register for GP register
     
	 
	 //-- Hw Interrupts --//
    //a new model will handle the interupt case
	 ////////////////////input  [4:0] Int,               // Five hardware interrupts external to the processor
    //-- Exceptions --//
    //////////////input  reset,                   // Cold Reset (EXC_Reset)
	 //////////////////.Addr_Err(addr_err),//单周期，故去除以上三个地址错误
    /////////////////////input  EXC_Ov,                  // Integer Overflow Exception
    /////////////////input  EXC_Tr,                  // Trap Exception
    ///////////////input  EXC_Sys,                 // System Call Exception
    ///////////////////input  EXC_Bp,                  // Breakpoint Exception
    ////////////////////input  EXC_RI,                  // Reserved Instruction Exception
    //-- Exception Data --//
    //null
    //-- Exception Control Flow --/
   
    //output Exc_PC_Sel,              // Mux selector for exception PC override
    .epc(epc_from_cp0),   // Address for PC at the beginning of an exception
    //output [7:0] IP                 // Pending Interrupts from Cause register (for diagnostic purposes)
    .npc_fromcpu(npc_from_cpu)
	);
	
mux4x32 data2cpu(.a(data_from_cp0),.b(data_from_hi),.c(data_from_lo),.d(32'bz),.select({mflo & ~mfc0,(mfhi | mflo) & ~mfc0}),.r(data_2_cpu));

cpu55 cpu(
		.clk(clk),
		.rst(rst),		
		.rdfcp0(data_2_cpu),						//cp0 向cpu传递的数据，hi lo 或者cp0寄存器
		.ep(cepc_from_cp0),								//epc from cp0 to pc
		.add_err(addr_err),								//暂定传给cp0 2013 10 30
		.rt2cp0(data_2_cp0),							//rt传给cp0寄存器
		.reg_d(rda_cp0),								//读写cp0的目的寄存器
		.rs2hilo(rs2hilo),						//rs传给hilo寄存器
		.npc2c0(npc_from_cpu),						//npc to epc
		//control flow
		.c0_eret(eret),
		.mtc0(mtc0),
		.mfc0(mfc0),
		.mthi(mthi),
		.mfhi(mfhi),
		.mtlo(mtlo),
		.mflo(mflo)
		);

endmodule
