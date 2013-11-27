`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:48 11/18/2013 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input  clock,
    //-- CP0 Functionality --//
    input  Mfc0,                    // CPU instruction is Mfc0
    input  Mtc0,                    // CPU instruction is Mtc0
    //input  IF_Stall,
    //input  ID_Stall,                // Commits are not made during stalls
   // input  COP1,                    // Instruction for Coprocessor 1
   // input  COP2,                    // Instruction for Coprocessor 2
   // input  COP3,                    // Instruction for Coprocessor 3
    input  ERET,                    // Instruction is ERET (Exception Return)
    input  [4:0] Rd,                // Specifies Cp0 register
    input  [2:0] Sel,               // Specifies Cp0 'select'
    input  [31:0] Reg_In,           // Data from GP register to replace CP0 register
    output reg [31:0] Reg_Out,      // Data from CP0 register for GP register
    //output KernelMode,              // Kernel mode indicator for pipeline transit
    //output ReverseEndian,           // Reverse Endian memory indicator for User Mode
    //-- Hw Interrupts --//
    input  [4:0] Int,               // Five hardware interrupts external to the processor
    //-- Exceptions --//
    input  reset,                   // Cold Reset (EXC_Reset)
//  input  EXC_SReset,              // Soft Reset (not implemented)
    //input  EXC_NMI,                 // Non-Maskable Interrupt
   // input  EXC_AdIF,                // Address Error Exception from i-fetch (mapped to AdEL)
   // input  EXC_AdEL,                // Address Error Exception from data memory load
   // input  EXC_AdES,                // Address Error Exception from data memory store
	 input Addr_Err,//单周期，故去除以上三个地址错误
    input  EXC_Ov,                  // Integer Overflow Exception
    input  EXC_Tr,                  // Trap Exception
    input  EXC_Sys,                 // System Call Exception
    input  EXC_Bp,                  // Breakpoint Exception
    input  EXC_RI,                  // Reserved Instruction Exception
    //-- Exception Data --//
    //input  [31:0] ID_RestartPC,     // PC for exception, whether PC of instruction or of branch (PC-4) if BDS
    //input  [31:0] EX_RestartPC,     // Same as 'ID_RestartPC' but in EX stage
    //input  [31:0] M_RestartPC,      // Same as 'ID_RestartPC' but in MEM stage
    //input  ID_IsFlushed,
    //input  IF_IsBD,                 // Indicator of IF exception being a branch delay slot instruction
    //input  ID_IsBD,                 // Indicator of ID exception being a branch delay slot instruction
    //input  EX_IsBD,                 // Indicator of EX exception being a branch delay slot instruction
    //input  M_IsBD,                  // Indicator of M  exception being a branch delay slot instruction
    //input  [31:0] BadAddr_M,        // Bad 'Virtual' Address for exceptions AdEL, AdES in MEM stage
    //input  [31:0] BadAddr_IF,       // Bad 'Virtual' Address for AdIF (i.e. AdEL) in IF stage
    //input  ID_CanErr,               // Cumulative signal, i.e. (ID_ID_CanErr | ID_EX_CanErr | ID_M_CanErr)
    //input  EX_CanErr,               // Cumulative signal, i.e. (EX_EX_CanErr | EX_M_CanErr)
    //input  M_CanErr,                // Memory stage can error (i.e. cause exception)
    //-- Exception Control Flow --/
    //output IF_Exception_Stall,
   // output ID_Exception_Stall,
    //output EX_Exception_Stall,
    //output M_Exception_Stall,
    //output IF_Exception_Flush,
    //output ID_Exception_Flush,
    //output EX_Exception_Flush,
    //output M_Exception_Flush,
    output Exc_PC_Sel,              // Mux selector for exception PC override
    output reg [31:0] Exc_PC_Out,   // Address for PC at the beginning of an exception
    output [7:0] IP                 // Pending Interrupts from Cause register (for diagnostic purposes)
    );

	reg [31:0] index;//0
	reg [31:0] random;//1
	reg [31:0] entrylo0;//2
	reg [31:0] entrylo1;//3
	reg [31:0] context;//4
	reg [31:0] pagemask;//5
	reg [31:0] wired;//6
	reg [31:0] hwrena;//7
	reg [31:0] badvaddr;//8
	reg [31:0] count;//9
	reg [31:0] entryhi;//10
	reg [31:0] compare;//11
	reg [31:0] sr;//12
	reg [31:0] cause;//13
	reg [31:0] epc;//14
	//reg [31:0] prid;//15
	//reg [31:0] Config;//16
	//reg [31:0] lladdr;//17
	//reg [31:0] watchlo;//18
	//reg [31:0] watchhi;//19
	//reg [31:0] debug;//23
	//reg [31:0] depc;//24.3
	//reg [31:0] perfctl;//25
	//reg [31:0] ecc;//26
	//reg [31:0] catheerr;//27
	//reg [31:0] taglo;//28.0
	//reg [31:0] datalo;//28.1
	//reg [31:0] taghi;//29.0
	//reg [31:0] datahi;//29.1
	//reg [31:0] errorepc;//30
	//reg [31:0] desave;//31



endmodule
