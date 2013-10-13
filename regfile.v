`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:27 10/12/2013 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
		input clk, //寄存器组时钟信号，下降沿写入数据
		input rst, //reset 信号，reset 有效时全部寄存器置零
		input wen, //写有效信号，wen 有效时寄存器才能被写入
		input [4:0] raddr1, //所需读取的寄存器的地址
		input [4:0] raddr2, //所需读取的寄存器的地址
		input [4:0] waddr, //写寄存器的地址
		input [31:0] wdata, //写寄存器数据
		output [31:0] rdata1, //raddr1 所对应寄存器的数据
		output [31:0] rdata2 //raddr2 所对应寄存器的数据
    );
	
	wire [31:0] reg_wens;
	wire [31:0] sel [31:0];	
	
	decoder #(5,32) reg_sel(.en(wen), .data_in(waddr),.data_out(reg_wens));
	
	myreg reg0(.clk(clk),.rst(rst),.wen(1'b0),.data_in(wdata),.data_out(sel[0]));
	myreg reg1(.clk(clk),.rst(rst),.wen(reg_wens[1]),.data_in(wdata),.data_out(sel[1]));
	myreg reg2(.clk(clk),.rst(rst),.wen(reg_wens[2]),.data_in(wdata),.data_out(sel[2]));
	myreg reg3(.clk(clk),.rst(rst),.wen(reg_wens[3]),.data_in(wdata),.data_out(sel[3]));
	myreg reg4(.clk(clk),.rst(rst),.wen(reg_wens[4]),.data_in(wdata),.data_out(sel[4]));
	myreg reg5(.clk(clk),.rst(rst),.wen(reg_wens[5]),.data_in(wdata),.data_out(sel[5]));
	myreg reg6(.clk(clk),.rst(rst),.wen(reg_wens[6]),.data_in(wdata),.data_out(sel[6]));
	myreg reg7(.clk(clk),.rst(rst),.wen(reg_wens[7]),.data_in(wdata),.data_out(sel[7]));
	myreg reg8(.clk(clk),.rst(rst),.wen(reg_wens[8]),.data_in(wdata),.data_out(sel[8]));
	myreg reg9(.clk(clk),.rst(rst),.wen(reg_wens[9]),.data_in(wdata),.data_out(sel[9]));
	
	myreg reg10(.clk(clk),.rst(rst),.wen(reg_wens[10]),.data_in(wdata),.data_out(sel[10]));
	myreg reg11(.clk(clk),.rst(rst),.wen(reg_wens[11]),.data_in(wdata),.data_out(sel[11]));
	myreg reg12(.clk(clk),.rst(rst),.wen(reg_wens[12]),.data_in(wdata),.data_out(sel[12]));
	myreg reg13(.clk(clk),.rst(rst),.wen(reg_wens[13]),.data_in(wdata),.data_out(sel[13]));
	myreg reg14(.clk(clk),.rst(rst),.wen(reg_wens[14]),.data_in(wdata),.data_out(sel[14]));
	myreg reg15(.clk(clk),.rst(rst),.wen(reg_wens[15]),.data_in(wdata),.data_out(sel[15]));
	myreg reg16(.clk(clk),.rst(rst),.wen(reg_wens[16]),.data_in(wdata),.data_out(sel[16]));
	myreg reg17(.clk(clk),.rst(rst),.wen(reg_wens[17]),.data_in(wdata),.data_out(sel[17]));
	myreg reg18(.clk(clk),.rst(rst),.wen(reg_wens[18]),.data_in(wdata),.data_out(sel[18]));
	myreg reg19(.clk(clk),.rst(rst),.wen(reg_wens[19]),.data_in(wdata),.data_out(sel[19]));
	
	myreg reg20(.clk(clk),.rst(rst),.wen(reg_wens[20]),.data_in(wdata),.data_out(sel[20]));
	myreg reg21(.clk(clk),.rst(rst),.wen(reg_wens[21]),.data_in(wdata),.data_out(sel[21]));
	myreg reg22(.clk(clk),.rst(rst),.wen(reg_wens[22]),.data_in(wdata),.data_out(sel[22]));
	myreg reg23(.clk(clk),.rst(rst),.wen(reg_wens[23]),.data_in(wdata),.data_out(sel[23]));
	myreg reg24(.clk(clk),.rst(rst),.wen(reg_wens[24]),.data_in(wdata),.data_out(sel[24]));
	myreg reg25(.clk(clk),.rst(rst),.wen(reg_wens[25]),.data_in(wdata),.data_out(sel[25]));
	myreg reg26(.clk(clk),.rst(rst),.wen(reg_wens[26]),.data_in(wdata),.data_out(sel[26]));
	myreg reg27(.clk(clk),.rst(rst),.wen(reg_wens[27]),.data_in(wdata),.data_out(sel[27]));
	myreg reg28(.clk(clk),.rst(rst),.wen(reg_wens[28]),.data_in(wdata),.data_out(sel[28]));
	myreg reg29(.clk(clk),.rst(rst),.wen(reg_wens[29]),.data_in(wdata),.data_out(sel[29]));
	
	myreg reg30(.clk(clk),.rst(rst),.wen(reg_wens[30]),.data_in(wdata),.data_out(sel[30]));
	myreg reg31(.clk(clk),.rst(rst),.wen(reg_wens[31]),.data_in(wdata),.data_out(sel[31]));	

	mux32x32 raddr1_select(	.select(raddr1),
									.data_in_0(sel[0]),
									.data_in_1(sel[1]),
									.data_in_2(sel[2]),
									.data_in_3(sel[3]),
									.data_in_4(sel[4]),
									.data_in_5(sel[5]),
									.data_in_6(sel[6]),
									.data_in_7(sel[7]),
									.data_in_8(sel[8]),
									.data_in_9(sel[9]),
									.data_in_10(sel[10]),									
									.data_in_11(sel[11]),
									.data_in_12(sel[12]),
									.data_in_13(sel[13]),
									.data_in_14(sel[14]),
									.data_in_15(sel[15]),
									.data_in_16(sel[16]),
									.data_in_17(sel[17]),
									.data_in_18(sel[18]),
									.data_in_19(sel[19]),
									.data_in_20(sel[20]),								
									.data_in_21(sel[21]),
									.data_in_22(sel[22]),
									.data_in_23(sel[23]),
									.data_in_24(sel[24]),
									.data_in_25(sel[25]),
									.data_in_26(sel[26]),
									.data_in_27(sel[27]),
									.data_in_28(sel[28]),
									.data_in_29(sel[29]),
									.data_in_30(sel[30]),
									.data_in_31(sel[31]),
									.data_out(rdata1));
									
									
		mux32x32 raddr2_select(	.select(raddr1),
									.data_in_0(sel[0]),
									.data_in_1(sel[1]),
									.data_in_2(sel[2]),
									.data_in_3(sel[3]),
									.data_in_4(sel[4]),
									.data_in_5(sel[5]),
									.data_in_6(sel[6]),
									.data_in_7(sel[7]),
									.data_in_8(sel[8]),
									.data_in_9(sel[9]),
									.data_in_10(sel[10]),									
									.data_in_11(sel[11]),
									.data_in_12(sel[12]),
									.data_in_13(sel[13]),
									.data_in_14(sel[14]),
									.data_in_15(sel[15]),
									.data_in_16(sel[16]),
									.data_in_17(sel[17]),
									.data_in_18(sel[18]),
									.data_in_19(sel[19]),
									.data_in_20(sel[20]),								
									.data_in_21(sel[21]),
									.data_in_22(sel[22]),
									.data_in_23(sel[23]),
									.data_in_24(sel[24]),
									.data_in_25(sel[25]),
									.data_in_26(sel[26]),
									.data_in_27(sel[27]),
									.data_in_28(sel[28]),
									.data_in_29(sel[29]),
									.data_in_30(sel[30]),
									.data_in_31(sel[31]),
									.data_out(rdata2));	
	
endmodule
