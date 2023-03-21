`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:41:44 03/21/2023 
// Design Name: 
// Module Name:    display_ptr 
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
module display_ptr(
input clk_10kHz,
output reg [1:0] digit=0
    );
	 
always @(posedge clk_10kHz) digit <= digit+1;

endmodule
