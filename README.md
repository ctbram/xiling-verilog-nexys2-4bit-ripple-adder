# xiling-verilog-nexys2-4bit-ripple-adder
trying to make 4bit ripple adder that displays a, b, sum, anc co on the four sseg displays.

four_bit_ripple_adder_tl //is the top level

 a and b are input from switches
 
 and are fed into ripple_adder_4b and uutss7s0 and uutss7s1
 
 the outputs sum and carry_out get fed intp uutss7s2 and uutss7s3
 
 the four hex2_7seg uuts return ssegA, ssegB, ssegSum, and ssegCo 7bit values for the 7seg displays
 
 tenkHz_clkgen feds in display_ptr which should outout 0,1,2,3 every 10kHz and feed into anode_ctrl and sseg_ctrl
 
 which should set the correct display anode and sseg display digit
