`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:50 03/18/2023 
// Design Name: 
// Module Name:    anode_ctrl 
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
module anode_ctrl(
input [1:0] dp,
output reg [3:0] anode = 4'b1111
);
	 
	always @(dp) begin
		case(dp)
			2'b00: anode = 4'b1110;
			2'b01: anode = 4'b1101;
			2'b10: anode = 4'b1011;
			2'b11: anode = 4'b0111;
		endcase
	end
	

endmodule
