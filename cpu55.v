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
		//修改imem时的数据
		//input [31:0] iram_indata
		//******no need bs temporal temporarily******//
		/*input [31:0] BEPU_FEPU_data,
		input [31:0] bc_cpu_data,
		output [31:0] cpu_bc_data, //cpu_bc_data
		output [31:0] cpu_bc_addr,
		output cpu_bc_rw*/
		/*************add by wong*****************/
		//data flow
		input [31:0] rdfcp0,//cp0 向cpu传递的数据，hi lo 或者cp0寄存器
		output add_err,//暂定传给cp0 2013 10 30
		output [31:0] rt2cp0,//rt传给cp0寄存器
		output [4:0] reg_d,//读写cp0的目的寄存器
		output [31:0] rs2hilo,//rs传给hilo寄存器
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

//------------------------控制信号---------------------------
//iram_ena: 指令寄存器使能信号， 常为高电平使能
//iram_wena: 指令寄存器写信号，用于debug时修改指令寄存器内部的值
//pc_ena：pc寄存器使能信号，高电平有效，在流水线stall时，使其低电平无效
//rf_ena：在回写阶段，需要写寄存器组给的写信号
//wrf: 在译码阶段，得到的写寄存器组信号
//shift：在译码阶段，得到的最终写入alua端的选择信号，低电平：选择寄存器读出的rd1，高电平：选择shamt32扩展后的值
//immc: 在译码阶段，得到的最终吸入alub端的选择信号，低电平：选择寄存器读出的rd2，高电平：选择imm32值
//aluc: 在译码阶段，得到的alu的控制信号
//shift_e: 在执行阶段，alua需要的控制信号
//aluc_e： 在执行阶段，alu需要的控制信号
//dram_ena: 在存储阶段，dram的使能信号
//dram_wena：在存储阶段，dram的写信号
//wbdc: 在回写阶段，最终回写到寄存器组数据的选择信号，高电平：数据存储器输出，低电平：alu端结果
//dmem: 译码阶段，写数据寄存器写信号
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

//------------------------数据总线---------------------------
//pc: 当前pc值
//npc：下一个pc值
//instr: 在取指阶段，从取指令单元得到的指令
//pc_jr: 在取值阶段，在译码阶段得到的从寄存器组得到的jr的跳转的地址，其中一个npc的值
//wrf_data：在回写阶段，最终写入到寄存器组的数据
//wrf_addr: 回写阶段写寄存器的地址
//rd1, rd2: 在译码阶段取出的源操作数a和b
//shamt32: 译码阶段instr[10:6]立即数的扩展值
//imm32：译码阶段instr[15:0]立即数扩展值
//alud: 在执行阶段，alu得出的运算结果
//zero, carry, overflow, negative：执行阶段得到的标志位
//wrf_addr_d: 译码阶段，得到要回写的寄存器地址
//dram_indata: 存储阶段，需要写到数据存储器的内容
//dram_outdata: 存储阶段，从数据存储器读出的内容
//wbd: 回写阶段，最终要写回寄存器的值
//imm18: 译码阶段，得到左移两位的imm值
//index28: 译码阶段，得到左移两位的index值
//pc8: 取指阶段，得到pc+8的值
//wa_f: 执行阶段，得到译码阶段得到的回写地址
//wa_e: 执行阶段，得到的回写地址
//aludc: 译码阶段，得到的控制最终alu输出端的控制信号
//w:读写word
//h:读写halfword
//b:读写byte
//z:零或符号扩展
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
//assign cpu_bc_rw = dram_wena; //读的时候需要改下！
//assign dram_outdata = BEPU_FEPU_data;

assign rt2cp0 = rd2;/*add by wong*/
assign rs2hilo = rd1;/*add by wong*/

file_write #(32, "instr")fw_instr(clk, instr);
file_write #(32, "pc") fw_pc(clk, pc);

endmodule
