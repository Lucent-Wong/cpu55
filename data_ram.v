`timescale 1ns / 1ps
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
module data_ram #(parameter WIDTH = 8, DEPTH = 3, INIT = 1)(
		input clk,
		input ram_ena,
		input wena,
		input w,
		input h,
		input b,
		input z,
		input [DEPTH - 1:0] addr,
		input [WIDTH - 1:0] data_in,
		output [WIDTH - 1:0] data_out,
		output AddressError
    );

   parameter RAM_WIDTH = WIDTH;
   parameter RAM_ADDR_BITS = DEPTH;
   integer k;
	
   reg [RAM_WIDTH-1:0] ram [(2**RAM_ADDR_BITS)-1:0];

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
		always @(posedge clk)
      if (ram_ena) begin
         if (wena) begin
            ram[addr] <= data_in;
            data_out <= data_in;
         end
         else
            data_out <= ram[addr];
      end
	`elsif READ_FIRST
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

			assign data_out = ram[addr];
	`endif
						
endmodule