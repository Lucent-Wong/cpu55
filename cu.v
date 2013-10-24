`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:24 10/16/2013 
// Design Name: 
// Module Name:    cu 
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
module controlunit(
		input [5:0] op,
		input [5:0] func,
		input zero,
		//add by wong
		input negtive,
		input [4:0] rs,
		input [4:0] rt,
		input [4:0] rd,
		//input [4:0] sa,//not used so far
		output rt_sel,	
		output [3:0] whb,//whbz
		//
		output [3:0] aluc,
		output wrf,
		output sext_i, //imm���Ż�������չ
		output sext_s, //shamt���Ż�������չ
		output shift,
		output regwa,
		output immc,
		output wena, //д����memд�ź�
		output wdc,
		output aludc,
		output [1:0] pcsource
    );

wire r_type;
wire i_add, i_addu, i_sub, i_subu, i_and, i_or, i_xor, i_nor, i_slt, i_sltu, i_sll, i_srl, i_sra,
	  i_sllv, i_srlv, i_srav, i_jr;
wire i_addi, i_addiu, i_andi, i_ori, i_xori, i_lw, i_sw, i_beq, i_bne, i_slti, i_sltiu, i_lui;

/********************add by wong***************************/
wire i_div, i_divu, i_mult, i_multu; //undone
wire i_bgez, i_bgtz, i_blez, i_bltz;
wire i_jalr;
wire i_lbu, i_lhu, i_lb, i_lh, i_sb, i_sh;
wire i_break, i_syscall;
wire i_eret, i_mfhi, i_mflo, i_mthi, i_mtlo, i_mfc0, i_mtc0;
/**********************************************************/

//R_type����ָ��
assign r_type  = ~op[5] && ~op[4] && ~op[3] && ~op[2] && ~op[1] && ~op[0];
assign i_add   = r_type &&  func[5] && ~func[4] && ~func[3] && ~func[2] && ~func[1] && ~func[0];
assign i_addu  = r_type &&  func[5] && ~func[4] && ~func[3] && ~func[2] && ~func[1] &&  func[0];
assign i_sub   = r_type &&  func[5] && ~func[4] && ~func[3] && ~func[2] &&  func[1] && ~func[0];
assign i_subu  = r_type &&  func[5] && ~func[4] && ~func[3] && ~func[2] &&  func[1] &&  func[0];
assign i_and   = r_type &&  func[5] && ~func[4] && ~func[3] &&  func[2] && ~func[1] && ~func[0];
assign i_or    = r_type &&  func[5] && ~func[4] && ~func[3] &&  func[2] && ~func[1] &&  func[0];
assign i_xor   = r_type &&  func[5] && ~func[4] && ~func[3] &&  func[2] &&  func[1] && ~func[0];
assign i_nor   = r_type &&  func[5] && ~func[4] && ~func[3] &&  func[2] &&  func[1] &&  func[0];
assign i_slt   = r_type &&  func[5] && ~func[4] &&  func[3] && ~func[2] &&  func[1] && ~func[0];
assign i_sltu  = r_type &&  func[5] && ~func[4] &&  func[3] && ~func[2] &&  func[1] &&  func[0];
assign i_sll   = r_type && ~func[5] && ~func[4] && ~func[3] && ~func[2] && ~func[1] && ~func[0];
assign i_srl   = r_type && ~func[5] && ~func[4] && ~func[3] && ~func[2] &&  func[1] && ~func[0];
assign i_sra   = r_type && ~func[5] && ~func[4] && ~func[3] && ~func[2] &&  func[1] &&  func[0];
assign i_sllv  = r_type && ~func[5] && ~func[4] && ~func[3] &&  func[2] && ~func[1] && ~func[0];
assign i_srlv  = r_type && ~func[5] && ~func[4] && ~func[3] &&  func[2] &&  func[1] && ~func[0];
assign i_srav  = r_type && ~func[5] && ~func[4] && ~func[3] &&  func[2] &&  func[1] &&  func[0];
assign i_jr    = r_type && ~func[5] && ~func[4] &&  func[3] && ~func[2] && ~func[1] && ~func[0];
//I_type����ָ��
assign i_addi  = ~op[5] && ~op[4] &&  op[3] && ~op[2] && ~op[1] && ~op[0];
assign i_addiu = ~op[5] && ~op[4] &&  op[3] && ~op[2] && ~op[1] &&  op[0];
assign i_andi  = ~op[5] && ~op[4] &&  op[3] &&  op[2] && ~op[1] && ~op[0];
assign i_ori   = ~op[5] && ~op[4] &&  op[3] &&  op[2] && ~op[1] &&  op[0];
assign i_xori  = ~op[5] && ~op[4] &&  op[3] &&  op[2] &&  op[1] && ~op[0];
assign i_lw    =  op[5] && ~op[4] && ~op[3] && ~op[2] &&  op[1] &&  op[0];
assign i_sw    =  op[5] && ~op[4] &&  op[3] && ~op[2] &&  op[1] &&  op[0];
assign i_beq   = ~op[5] && ~op[4] && ~op[3] &&  op[2] && ~op[1] && ~op[0];
assign i_bne   = ~op[5] && ~op[4] && ~op[3] &&  op[2] && ~op[1] &&  op[0];
assign i_slti  = ~op[5] && ~op[4] &&  op[3] && ~op[2] &&  op[1] && ~op[0];
assign i_sltiu = ~op[5] && ~op[4] &&  op[3] && ~op[2] &&  op[1] &&  op[0];
assign i_lui   = ~op[5] && ~op[4] &&  op[3] &&  op[2] &&  op[1] &&  op[0];
//J_type����ָ��
assign i_j     = ~op[5] && ~op[4] && ~op[3] && ~op[2] &&  op[1] && ~op[0];
assign i_jal   = ~op[5] && ~op[4] && ~op[3] && ~op[2] &&  op[1] &&  op[0];

/********************add by wong***************************/
//r_type
assign i_div  = r_type && ~func[5] && func[4] && func[3] && ~func[2] && func[1] && ~func[0];
assign i_divu = r_type && ~func[5] && func[4] && func[3] && ~func[2] && func[1] &&  func[0];
assign i_mult = r_type && ~func[5] && func[4] && func[3] && ~func[2] && ~func[1] && ~func[0];
assign i_multu = r_type && ~func[5] && func[4] && func[3] && ~func[2] && ~func[1] && func[0];
assign i_jalr = r_type && ~func[5] && ~func[4] &&  func[3] && ~func[2] && ~func[1] && func[0];
//i_type
assign i_bgez = ~op[5] && ~op[4] && ~op[3] && ~op[2] && ~op[1] &&  op[0] && ~rt[4] && ~rt[3] && ~rt[2] && ~rt[1] && rt[0];
assign i_bgtz = ~op[5] && ~op[4] && ~op[3] &&  op[2] &&  op[1] &&  op[0];
assign i_blez = ~op[5] && ~op[4] && ~op[3] && ~op[2] && ~op[1] && ~op[0];
assign i_bltz = ~op[5] && ~op[4] && ~op[3] && ~op[2] && ~op[1] && op[0] && ~rt[4] && ~rt[3] && ~rt[2] && ~rt[1] && ~rt[0];
assign i_lbu  = op[5] && ~op[4] && ~op[3] &&  op[2] && ~op[1] && ~op[0];
assign i_lhu  = op[5] && ~op[4] && ~op[3] &&  op[2] && ~op[1] &&  op[0];
assign i_lb   = op[5] && ~op[4] && ~op[3] && ~op[2] && ~op[1] && ~op[0];
assign i_lh   = op[5] && ~op[4] && ~op[3] && ~op[2] && ~op[1] &&  op[0];
assign i_sb   = op[5] && ~op[4] &&  op[3] && ~op[2] && ~op[1] && ~op[0];
assign i_sh   = op[5] && ~op[4] &&  op[3] && ~op[2] && ~op[1] &&  op[0];
//syscall
assign i_break = r_type && ~func[5] && ~func[4] &&  func[3] &&  func[2] && ~func[1] && func[0];
assign i_syscall = r_type && ~func[5] && ~func[4] &&  func[3] &&  func[2] && ~func[1] && ~func[0];
//cp0
assign i_eret = ~op[5] && op[4] && ~op[3] && ~op[2] && ~op[1] && ~op[0] && rs[4] && ~rs[3] && ~rs[3] && ~rs[2] && ~rs[1] && ~rs[0] && ~func[5] && func[4] && func[3] && ~func[2] && ~func[1] && ~func[0];;
assign i_mfhi = r_type && ~func[5] &&  func[4] && ~func[3] && ~func[2] && ~func[1] && ~func[0];
assign i_mflo = r_type && ~func[5] &&  func[4] && ~func[3] && ~func[2] &&  func[1] && ~func[0];
assign i_mthi = r_type && ~func[5] &&  func[4] && ~func[3] && ~func[2] && ~func[1] &&  func[0];
assign i_mtlo = r_type && ~func[5] &&  func[4] && ~func[3] && ~func[2] &&  func[1] &&  func[0];
assign i_mfc0 = ~op[5] &&  op[4] && ~op[3] && ~op[2] && ~op[1] && ~op[0] && ~rs[4] && ~rs[3] && ~rs[2] && ~rs[1] && ~rs[0];
assign i_mtc0 = ~op[5] &&  op[4] && ~op[3] && ~op[2] && ~op[1] && ~op[0] && ~rs[4] && ~rs[3] &&  rs[2] && ~rs[1] && ~rs[0];
/**********************************************************/

//alu�Ŀ���
assign aluc[0] = i_subu || i_sub || i_or  || i_nor  || i_srl || i_srlv || i_slt || i_ori  || i_slti || i_beq   || i_bne || bgez || bgtz || blez || bltz;
assign aluc[1] = i_add  || i_sub || i_xor || i_nor  || i_sll || i_sllv || i_slt || i_sltu || i_addi || i_xori  || i_slti || i_sltiu || i_lw  || i_sw || i_lbu || i_lhu || i_lb || i_lh || i_beq || i_bne || bgez || bgtz || blez || bltz;
assign aluc[2] = i_and  || i_or  || i_xor || i_nor  || i_sra || i_srav || i_sll || i_sllv || i_srl  || i_srlv  || i_andi || i_ori   || i_xori;
assign aluc[3] = i_sra  || i_srav|| i_sll || i_sllv || i_srl || i_srlv || i_slt || i_sltu || i_slti || i_sltiu || i_lui;
//д�Ĵ������ź�
assign wrf = i_add || i_addu || i_sub   || i_subu || i_and  || i_or   || i_xor  || i_nor   || i_slt  || i_sltu || 
				 i_sll || i_srl  || i_sra   || i_sllv || i_srlv || i_srav || i_addi || i_addiu || i_andi || i_ori  ||
				 i_xori|| i_slti || i_sltiu || i_lui  || i_lw || i_lbu || i_lhu || i_lb || i_lh || i_jal ||  i_jalr;
//shamt��instr[10:6]����չ�����źţ��ߵ�ƽ������λ��չ�� �͵�ƽ������չ
assign sext_s = i_sll || i_srl || i_sra;
//imm��instr[15:0]����չ�����źţ� �ߵ�ƽ��������չ���͵�ƽ������չ
assign sext_i = i_addi || i_addiu || i_slti || i_sltiu || i_lw || i_sw || i_lbu || i_lhu || i_lb || i_lh;
//aluԴ�����������źţ��ߵ�ƽ: Դ������������λ��չ���룬 �͵�ƽ��Դ����������rf��rd1���
assign shift = i_sll || i_srl || i_sra;
//npcѡ���źţ�00��pc+4�� 01��jr��npc������rf��Դ��������, 10: beq/bne(npc������imm32)
assign pcsource[0] = i_jr || i_j || i_jal || i_jalr; 
assign pcsource[1] = (i_beq && zero) || (i_bne && zero  == 1'b0) || (bgez && (zero == 1'b1 || negtive == 1'b0)) || (bgtz && (zero == 1'b0 && negtive == 1'b0)) || (blez && (zero == 1'b1 || negtive == 1'b1)) || (bltz (zero == 1'b0 && negtive == 1'b1)) || i_j || i_jal;
//regwaѡ���źţ��ߵ�ƽ��Ŀ�ļĴ���Ϊinstr[20:16]rt, �͵�ƽ��Ŀ�ļĴ���Ϊinstr[15:11]rd
assign regwa = i_addi || i_addiu || i_andi || i_ori || i_xori || i_slti || i_sltiu || i_lui || i_lw || i_lbu || i_lhu || i_lb || i_lh;
//alub�����źţ� �ߵ�ƽimm32���͵�ƽrd2
assign immc = i_addi || i_addiu || i_andi || i_ori || i_xori || i_slti || i_sltiu || i_lui || i_lw || i_sw || i_lbu || i_lhu || i_lb || i_lh;
//dmemд�����źţ��ߵ�ƽ��д���ݴ洢��
assign wena = i_sw;
//дrf�Ĵ��������ݿ����źţ��ߵ�ƽ�����ݼĴ���ȡ����ֵ���͵�ƽ��wd
assign wdc = i_lw || i_lbu || i_lhu || i_lb || i_lh;
//д���ݼĴ���������ѡ���źţ��ߵ�ƽ��ѡ��pc+8�� �͵�ƽ�� alud
//ѡ��pc+8�� alud = 1�� wdc = 0
assign aludc = i_jal || i_jalr;

//*******************add by wong***************************/
assign rt_sel = bgez || bgtz || blez || bltz;
assign whb[3] = i_lw;
assign whb[2] = i_lh;
assign whb[1] = i_lb;
assign whb[0] = i_lhu || lbu;
endmodule