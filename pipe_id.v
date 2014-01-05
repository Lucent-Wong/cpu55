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
		input [31:0] instr, //��ȡָ�׶εõ��ĵ�ǰָ��
		input [31:0] wd, //��д�׶�д�Ĵ�����ֵ
		input rf_wena, //��д�׶�д�Ĵ�����д�ź�
		input  [4:0]  wa, //��д�׶�д�Ĵ����ĵ�ַ
		input zero,
		input overflow,
		/******************add by wong***************************/
		input negative,
		input [31:0]rdfcp0,
		/********************************************************/
		output [31:0] rd1, //����׶Σ��ӼĴ�����õ���Դ������a
		output [31:0] rd2, //����׶Σ��ӼĴ�����õ���Դ������b
		output [31:0] shamt32, //����׶Σ�ָ��shamt������չ�õ���32λ������
		output [31:0] imm32,
		output [4:0] wa_d, //����׶Σ��õ�Ҫд�Ĵ�����ĵ�ַ
		output [17:0] imm18,
		output [27:0] index28,
		//���Ƶ�Ԫ�ź�
		output [3:0] aluc, //����׶Σ��ӿ��Ƶ�Ԫ�õ���alu�Ŀ����ź�
		output wrf, //����׶Σ��ӿ��Ƶ�Ԫ�õ��Ļ�д�Ĵ�����д�ź�
		output shift, //����׶Σ�alua�Ŀ����ź�
		output immc, //����׶Σ�alub�Ŀ����ź�
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
