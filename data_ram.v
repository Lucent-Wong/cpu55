`timescale 1ns / 1ps
`define WRITE_FIRST
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:41 10/24/2013 
// Design Name: 
// Module Name:    data_ram 
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
module data_ram #(parameter /*WIDTH = 32,*/ DEPTH = 3, INIT = 1)(
		input clk,
		input ram_ena,
		input wena,
		input w,
		input h,
		input b,
		input z,
		input [DEPTH - 1:0] addr,
		input [31:0] data_in,
		output reg [31:0] data_out,
		output reg AddressError
    );

   //parameter RAM_WIDTH = 31;
   parameter RAM_ADDR_BITS = DEPTH;
   integer k;
		
   reg [7:0] ram [(2**RAM_ADDR_BITS)-1:0];

   //  The following code is only necessary if you wish to initialize the RAM 
   //  contents via an external file (use $readmemb for binary data)
   initial begin
		if(INIT == 1)
			$readmemh("1out.txt", ram);
		else if(INIT == 2)
			for(k = 0; k < 150; k = k + 1) begin
				ram[k] = 8'h31;
			end
	end
	

	`ifdef WRITE_FIRST
		always @(/*posedge clk or negedge*/ clk)
		if (ram_ena) begin
			if(clk ==1) begin
				if((w && ~(addr[0] || addr[1])) || (h && ~addr[0]) || b) begin
					if (wena) begin
						case({w,h,b,z})
						4'b0010: begin
							ram[addr] <= data_in[7:0];
							data_out <= {{24{1'b0}},ram[addr]};
						end
						4'b0100: begin
							ram[addr] <= data_in[7:0];
							ram[addr+1] <= data_in[15:8];
							data_out <= {{16{1'b0}},ram[addr+1],ram[addr]};
						end
						4'b0011: begin
							ram[addr] <= data_in[7:0];
							data_out <= {{24{ram[addr][7]}},ram[addr]};
						end
						4'b0101: begin
							ram[addr] <= data_in[7:0];
							ram[addr+1] <= data_in[15:8];
							data_out <= {{16{ram[addr+1][7]}},ram[addr+1],ram[addr]};
						end
						default: begin
							ram[addr] <= data_in[7:0];
							ram[addr+1] <= data_in[15:8];
							ram[addr+2] <= data_in[23:16];
							ram[addr+3] <= data_in[31:24];
							data_out <= {ram[addr+3],ram[addr+2],ram[addr+1],ram[addr]};
						end
						endcase
						//ram[addr] <= data_in;
						//data_out <= ram[addr];
					end
					else
						case({w,h,b,z})
						4'b0010: begin					
							data_out <= {{24{1'b0}},ram[addr]};
						end
						4'b0100: begin					
							data_out <= {{16{1'b0}},ram[addr+1],ram[addr]};
						end
						4'b0011: begin					
							data_out <= {{24{ram[addr][7]}},ram[addr]};
						end
						4'b0101: begin
							data_out <= {{16{ram[addr+1][7]}},ram[addr+1],ram[addr]};
						end
						default: begin					
							data_out <= {ram[addr+3],ram[addr+2],ram[addr+1],ram[addr]};
						end
						endcase
						//data_out <= ram[addr];
					end
				else begin
					AddressError <= 1'b1;
				end
			end
			else begin
				AddressError <= 1'b0;
			end
		end
	/*`elsif READ_FIRST
		always @(posedge clk)
      if (ram_ena) begin
         if (wena)
            ram[addr] <= data_in;
         data_out <= ram[addr];
      end
	`elsif NO_CHANGE
		always @(posedge clk)
      if (ram_ena)
         if (wena)
            ram[addr] <= data_in;
         else
            data_out <= ram[addr];
	`elsif NORMAL
		  always @(posedge clk)
		  if (ram_ena)
			 if(wena)
            ram[addr] <= data_in;

			assign data_out = ram[addr];*/
	`endif	
endmodule