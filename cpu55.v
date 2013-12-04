`timescale 1ns / 1ps
`include "globaldefine.v"
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
		//�޸�imemʱ������
		//input [31:0] iram_indata
		//******no need bs temporal temporarily******//
		/*input [31:0] BEPU_FEPU_data,
		input [31:0] bc_cpu_data,
		output [31:0] cpu_bc_data, //cpu_bc_data
		output [31:0] cpu_bc_addr,
		output cpu_bc_rw*/
		/*************add by wong*****************/
		//data flow
		input [31:0] rdfcp0,//cp0 ��cpu���ݵ����ݣ�hi lo ����cp0�Ĵ���
		output add_err,//�ݶ�����cp0 2013 10 30
		output [31:0] rt2cp0,//rt����cp0�Ĵ���
		output [4:0] reg_d,//��дcp0��Ŀ�ļĴ���
		output [31:0] rs2hilo,//rs����hilo�Ĵ���
		//control flow
		output c0_eret,
		output mtc0,
		output mfc0,
		output mthi,
		output mfhi,
		output mtlo,
		output mflo
    );
	 
//for test
wire [31:0] iram_indata;

//------------------------�����ź�---------------------------
//iram_ena: ָ��Ĵ���ʹ���źţ� ��Ϊ�ߵ�ƽʹ��
//iram_wena: ָ��Ĵ���д�źţ�����debugʱ�޸�ָ��Ĵ����ڲ���ֵ
//pc_ena��pc�Ĵ���ʹ���źţ��ߵ�ƽ��Ч������ˮ��stallʱ��ʹ��͵�ƽ��Ч
//rf_ena���ڻ�д�׶Σ���Ҫд�Ĵ��������д�ź�
//wrf: ������׶Σ��õ���д�Ĵ������ź�
//shift��������׶Σ��õ�������д��alua�˵�ѡ���źţ��͵�ƽ��ѡ��Ĵ���������rd1���ߵ�ƽ��ѡ��shamt32��չ���ֵ
//immc: ������׶Σ��õ�����������alub�˵�ѡ���źţ��͵�ƽ��ѡ��Ĵ���������rd2���ߵ�ƽ��ѡ��imm32ֵ
//aluc: ������׶Σ��õ���alu�Ŀ����ź�
//shift_e: ��ִ�н׶Σ�alua��Ҫ�Ŀ����ź�
//aluc_e�� ��ִ�н׶Σ�alu��Ҫ�Ŀ����ź�
//dram_ena: �ڴ洢�׶Σ�dram��ʹ���ź�
//dram_wena���ڴ洢�׶Σ�dram��д�ź�
//wbdc: �ڻ�д�׶Σ����ջ�д���Ĵ��������ݵ�ѡ���źţ��ߵ�ƽ�����ݴ洢��������͵�ƽ��alu�˽��
//dmem: ����׶Σ�д���ݼĴ���д�ź�
wire iram_ena, iram_wena, pc_ena; 
wire rf_wena;
wire wrf, shift, immc;
wire [3:0] aluc;
wire [1:0] pcsource;
wire shift_e;
wire [3:0] aluc_e;
wire dram_ena, dram_wena;
wire wbdc;
wire wdmem;

//------------------------��������---------------------------
//pc: ��ǰpcֵ
//npc����һ��pcֵ
//instr: ��ȡָ�׶Σ���ȡָ�Ԫ�õ���ָ��
//pc_jr: ��ȡֵ�׶Σ�������׶εõ��ĴӼĴ�����õ���jr����ת�ĵ�ַ������һ��npc��ֵ
//wrf_data���ڻ�д�׶Σ�����д�뵽�Ĵ����������
//wrf_addr: ��д�׶�д�Ĵ����ĵ�ַ
//rd1, rd2: ������׶�ȡ����Դ������a��b
//shamt32: ����׶�instr[10:6]����������չֵ
//imm32������׶�instr[15:0]��������չֵ
//alud: ��ִ�н׶Σ�alu�ó���������
//zero, carry, overflow, negative��ִ�н׶εõ��ı�־λ
//wrf_addr_d: ����׶Σ��õ�Ҫ��д�ļĴ�����ַ
//dram_indata: �洢�׶Σ���Ҫд�����ݴ洢��������
//dram_outdata: �洢�׶Σ������ݴ洢������������
//wbd: ��д�׶Σ�����Ҫд�ؼĴ�����ֵ
//imm18: ����׶Σ��õ�������λ��immֵ
//index28: ����׶Σ��õ�������λ��indexֵ
//pc8: ȡָ�׶Σ��õ�pc+8��ֵ
//wa_f: ִ�н׶Σ��õ�����׶εõ��Ļ�д��ַ
//wa_e: ִ�н׶Σ��õ��Ļ�д��ַ
//aludc: ����׶Σ��õ��Ŀ�������alu����˵Ŀ����ź�
//w:��дword
//h:��дhalfword
//b:��дbyte
//z:��������չ
wire [31:0] pc, npc;
wire [31:0] instr;
wire [31:0] pc_jr;
wire [31:0] wrf_data;
wire [4:0] wrf_addr;
wire [31:0] rd1, rd2, shamt32, imm32;
wire [31:0] alud;
wire zero, carry, overflow, negative;
//wire [4:0] wrf_addr_d;
wire [31:0] dram_indata, dram_outdata;
wire [31:0] wbd;
wire [17:0] imm18;
wire [27:0] index28;
wire [31:0] pc8;
wire [4:0] wa_f, wa_e;
wire aludc;

wire w;
wire h;
wire b;
wire z;
wire w_exe;
wire h_exe;
wire b_exe;
wire z_exe;

//unfinished
mux2x32 #(32) pc_mux(.a(npc),.b(epc),.select(1'b0),.r(_pc));

dffe #(32) pcreg(.clk(clk), .rst(rst), .ena(pc_ena), .data_in(npc), .data_out(pc));
pipe_if pipe_if(.clk(clk), .pc(pc), .ram_ena(iram_ena), .ram_wena(iram_wena), .ram_indata(iram_indata),
					 .pc_jr(pc_jr), .pcsource(pcsource), .imm18(imm18), .index28(index28), .ram_outdata(instr), .npc(npc), .pc8(pc8));
pipe_id pipe_id(.clk(clk), .rst(rst), .instr(instr), .wd(wrf_data), .rf_wena(rf_wena), .wa(wrf_addr), .zero(zero), .overflow(overflow),.negative(negative), 
					 .rd1(rd1), .rd2(rd2), .shamt32(shamt32), .imm32(imm32), .wa_d(wa_f), .imm18(imm18), .index28(index28), .aluc(aluc), .wrf(wrf), .shift(shift),
					 .immc(immc), .pcsource(pcsource), .wdmem(wdmem), .wdc(wbdc), .aludc(aludc),.w(w),.h(h),.b(b),.z(z),.c0_eret(c0_eret),.mtc0(mtc0),.mfc0(mfc0),
					.mthi(mthi),.mfhi(mfhi),.mtlo(mtlo),.mflo(mflo));
pipe_exe pipe_exe(.w(w),.h(h),.b(b),.z(z),.rd1(rd1), .rd2(rd2), .shamt32(shamt32), .imm32(imm32), .pc8(pc8), .immc(immc),
						.shift(shift_e), .aludc(aludc), .aluc(aluc_e), .wa_f(wa_f), 
						.wa_e(wa_e), .wd(alud), .zero(zero), .carry(carry), .negative(negative), .overflow(overflow),
						.e_w(w_exe),.e_h(h_exe),.e_b(b_exe),.e_z(z_exe));
pipe_mem pipemem(.w(w_exe),.h(h_exe),.b(b_exe),.z(z_exe),
					  .clk(clk), .ram_ena(dram_ena), .ram_wena(dram_wena), .addr(alud), .ram_indata(dram_indata), .ram_outdata(dram_outdata),
					  .AddressErr(add_err));
pipe_wb pipe_wb(.dmem_data(dram_outdata), .alud(alud), .wdc(wbdc), .wd(wbd));

assign iram_ena = 1'b1;
assign iram_wena = 1'b0;
assign pc_ena = 1'b1;
assign rf_wena = wrf;
assign aluc_e = aluc;
assign shift_e = shift;
assign pc_jr = rd1;
assign wrf_data = wbd;
assign wrf_addr = wa_e;
assign dram_indata = rd2;
assign dram_wena = wdmem;
assign dram_ena = 1'b1;
//assign cpu_bc_data = dram_indata;//32'd1;//rd2; //
//assign cpu_bc_addr = alud;
//assign cpu_bc_rw = dram_wena; //����ʱ����Ҫ���£�
//assign dram_outdata = BEPU_FEPU_data;

assign rt2cp0 = rd2;/*add by wong*/
assign rs2hilo = rd1;/*add by wong*/

file_write #(32, "instr")fw_instr(clk, instr);
file_write #(32, "pc") fw_pc(clk, pc);

endmodule
