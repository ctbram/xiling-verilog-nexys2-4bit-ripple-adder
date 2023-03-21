`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:56 03/16/2023 
// Design Name: 
// Module Name:    tenHz_clkgen 
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
module tenkHz_clkgen(
input clk_50MHz,
input rst,
output clk_10kHz
);
	 
	 reg [12:0] ctr_reg=0; // 2_500 requires 13-bita
	 reg clk_out_reg=0;
	 
	 always @(posedge clk_50MHz or posedge rst)
		if(rst)begin
			ctr_reg <= 0;
			clk_out_reg <= 0;
		end
		else
			if(ctr_reg == 2_499) begin // 50Mhz / 10kHz / 2 = 2_500
				ctr_reg <= 0;
				clk_out_reg <= ~clk_out_reg;				
			end
			else
				ctr_reg <= ctr_reg+1;
					
		assign clk_10kHz = clk_out_reg;

endmodule
