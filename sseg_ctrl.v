`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:47:25 03/17/2023 
// Design Name: 
// Module Name:    sseg_ctrl 
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
module sseg_ctrl(
input [1:0] dp,
input [6:0] segA,
input [6:0] segB,
input [6:0] segSum,
input [6:0] segCo,
output reg [6:0] sseg = 7'b1111111
);

	always @(dp) begin
		case(dp)
			2'b00 : sseg = segA;
			2'b01 : sseg = segB;
			2'b10 : sseg = segSum;
			2'b11 : sseg = segCo;
		endcase
	end
		 
endmodule
