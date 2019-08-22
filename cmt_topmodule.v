`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:54 06/10/2019 
// Design Name: 
// Module Name:    cmt_topmodule 
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

module cmt_topmodule(
input CLK,
input RESET,
output  read_clk,
output  write_clk
    );
//input
   reg CLK_IN1;

// Outputs
	wire CLK_OUT1;
	wire CLK_OUT2;
	wire CLK_OUT3;
	wire LOCKED;
	wire clk3;
// Instantiate the Unit Under Test (UUT)
	cmt5 uut (
		//.CLK_IN1(CLK_IN1),
      .CLK_IN1(CLK),		
		.CLK_OUT1(CLK_OUT1), 
		.CLK_OUT2(CLK_OUT2), 
		.CLK_OUT3(CLK_OUT3), 
		.RESET(RESET), 
		.LOCKED(LOCKED)
	);
	clocking_mod_mux clock_mux (
		.clk(CLK_OUT1),	
		.clk1(CLK_OUT2), 
		.clk2(CLK_OUT3), 
		.clk3(clk3) 
	);
      
   //parameter p=10;   
   //initial CLK_IN1=0;
	//assign CLK_IN1=CLK;
	//always begin #10CLK_IN1=~CLK_IN1;end
	assign read_clk=clk3;
	assign write_clk=CLK_OUT1;

endmodule
