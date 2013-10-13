`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:18 10/12/2013 
// Design Name: 
// Module Name:    decoder 
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
module decoder #(parameter IN = 5, parameter OUT = 32)(
	input en,
	input [IN-1:0] data_in,
	output reg [OUT-1:0] data_out
    );

	always @(*)
	begin
		if(en == 1'b1)
		begin
			/*case(data_in)
				5'b0000:
					begin
					end
				5'b0001:
					begin
					end
				5'b0010:
					begin
					end
				5'b0011:
					begin
					end
				5'b0100:
					begin
					end
				5'b0101:
					begin
					end
				
			endcase*/
			data_out = 0;
			data_out[data_in] = 1;
		end
		else
			data_out = 0;
	end

endmodule
