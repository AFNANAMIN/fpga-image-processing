`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:16:12 06/12/2019 
// Design Name: 
// Module Name:    mod 
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
module mod(
input CLK_IN1,
output  doutb1,CLK_OUT1,CLK_OUT2,CLK_OUT3
    );

bram18 bram_inst1 (
		.clka(write_clk), 
		.ena(ena), 
		.wea(wea1), 
		.addra(addra1), 
		.dina(data_in1), 
		.clkb(CLK_OUT1), 
		.enb(enb), 
		.addrb(addrb1), 
		.doutb(doutb1)
	);
	
	cmt5 uut (
		.CLK_IN1(CLK_IN1),		
		.CLK_OUT1(CLK_OUT1), 
		.CLK_OUT2(CLK_OUT2), 
		.CLK_OUT3(CLK_OUT3), 
		.RESET(RESET), 
		.LOCKED(LOCKED)
	);

endmodule
