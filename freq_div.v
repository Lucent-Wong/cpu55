`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:52 03/30/2014 
// Design Name: 
// Module Name:    freq_div 
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
module freq_div(
input clko,
output clk
    );

reg [3:0] counter = 0;
reg clock = 0;
always @(posedge clko) begin
	if(counter[3] == 1'b1)begin
		clock <= ~clock;
		counter <= 0;
	end
	else begin
		counter <= counter + 1;
	end
end

assign clk = clock;

endmodule
