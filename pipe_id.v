`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:30 10/14/2013 
// Design Name: 
// Module Name:    pipe_id 
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
module pipe_id(
		input clk,
		input rst,
		input [31:0] instr, //从取指阶段得到的当前指令
		input [31:0] wd, //回写阶段写寄存器的值
		input rf_wena, //回写阶段写寄存器的写信号
		input  [4:0]  wa, //回写阶段写寄存器的地址
		input zero,
		input overflow,
		/******************add by wong***************************/
		input negative,
		input [31:0]rdfcp0,
		/********************************************************/
		output [31:0] rd1, //译码阶段，从寄存器组得到的源操作数a
		output [31:0] rd2, //译码阶段，从寄存器组得到的源操作数b
		output [31:0] shamt32, //译码阶段，指令shamt经过扩展得到的32位立即数
		output [31:0] imm32,
		output [4:0] wa_d, //译码阶段，得到要写寄存器组的地址
		output [17:0] imm18,
		output [27:0] index28,
		//控制单元信号
		output [3:0] aluc, //译码阶段，从控制单元得到的alu的控制信号
		output wrf, //译码阶段，从控制单元得到的回写寄存器的写信号
		output shift, //译码阶段，alua的控制信号
		output immc, //译码阶段，alub的控制信号
		output [1:0] pcsource,
		output wdmem,
		output wdc,
		output aludc,
		
		output w,
		output h,
		output b,
		output z,
		output c0_eret,
		output mtc0,
		output mfc0,
		output mthi,		
		output mtlo,
		output mfhi,		
		output mflo,
		output mult,
		output multu,
		output div,
		output divu,
		output [1:0] selpc//select npc or epc or base
		
    );

wire [4:0] ra1, ra2, rd;
wire [4:0] rs, rt, shamt;
wire [15:0] imm;
wire [5:0] op, func;
wire [25:0] index;
wire sext_s, regwa, sext_i;
wire rf_w;

wire rf_mfhi;
output rf_mflo;
//////add by wong////////
wire rt_sel;
wire rf_wd;
wire rf_mfc0;
mux2x32 wdsel (.a(wd),.b(rdfcp0),.select(rf_mfc0 | rf_mfhi | rf_mflo),.r(rf_wd));
/////////////////////////

assign rf_w = rf_wena && (~overflow);

regfile rf(.clk(clk), .rst(rst),.wen(rf_w), .raddr1(ra1),.raddr2(ra2), 
			 .waddr(wa), .wdata(rf_wd), .rdata1(rd1),.rdata2(rd2));
controlunit cu(.op(op),.func(func),.zero(zero),	.negative(negative),.rs(rs),.rt(rt),.rd(rd),
					.rt_sel(rt_sel),	
					.w(w),
					.h(h),
					.b(b),
					.z(z),
					//
					.aluc(aluc),
					.wrf(wrf),
					.sext_i(sext_i), 
					.sext_s(sext_s), 
					.shift(shift),
					.regwa(regwa),
					.immc(immc),
					.wena(wdmem), 
					.wdc(wdc),
					.aludc(aludc),
					.pcsource(pcsource),
					.c0_eret(c0_eret),
					.mtc0(mtc0),
					.mfc0(rf_mfc0),
					.mthi(rf_mthi),
					.mfhi(rf_mfhi),
					.mtlo(mtlo),
					.mflo(mflo),
					.mult(mult),
					.multu(multu),
					.div(div),
					.divu(divu),
					.selpc(selpc)//select npc or epc or base
					);
mux2x32 rt_mux(.a(rt),.b(5'b00000),.select(rt_sel),.r(ra2));//decide if rt euqals $0
ext shamtext(shamt, sext_s, shamt32);
ext #(16) immext(imm, sext_i, imm32);

assign rs = instr[25:21];
assign rt = instr[20:16];
assign rd = instr[15:11];
assign shamt = instr[10:6];
assign imm = instr[15:0];
assign op = instr[31:26];
assign func = instr[5:0];
assign index = instr[25:0];

assign mfc0 = rf_mfc0;
assign mfhi = rf_mfhi;
assign mflo = rf_mflo;

mux2x32 #(5) select_wa(rd, rt, regwa, wa_d);

assign ra1 = rs;
//assign ra2 = rt;
assign imm18 = imm << 2;
assign index28 = index << 2;
endmodule
