`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:18 03/21/2023 
// Design Name: 
// Module Name:    four_bit_ripple_adder_tl 
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
module four_bit_ripple_adder_tl(
input clk_50MHz,
input [3:0] a,
input [3:0] b,
input rst,
output [6:0] sseg,
output [3:0] anode
);
	  
wire [3:0] sum;
wire carry_out;
ripple_adder_4b uutra4b (
    .a(a), 
    .b(b), 
    .sum(sum), 
    .carry_out(carry_out)
    );

wire [6:0] ssegA, ssegB, ssegSum, ssegCo;
hex2_7seg uut7s0 (
    .hex_digit(a), 
    .sseg(ssegA)
    );
hex2_7seg uut7s1 (
    .hex_digit(b), 
    .sseg(ssegB)
    );
hex2_7seg uut7s2 (
    .hex_digit(sum), 
    .sseg(ssegSum)
    );
hex2_7seg uut7s3 (
    .hex_digit({3'b000, carry_out}), 
    .sseg(ssegCo)
    );
	 
tenkHz_clkgen uutclk (
    .clk_50MHz(clk_50MHz), 
    .rst(rst), 
    .clk_10kHz(clk_10kHz)
    );
	 
wire [1:0] digit;
display_ptr uutdigit (
    .clk_10kHz(clk_10kHz), 
    .digit(digit)
    );
	 
sseg_ctrl uutssegcntrl (
    .dp(digit), 
    .segA(segA), 
    .segB(segB), 
    .segSum(segSum), 
    .segCo(segCo), 
    .sseg(sseg)
    );
	 
anode_ctrl uutanodectrl (
    .dp(digit), 
    .anode(anode)
    );
	 
endmodule
