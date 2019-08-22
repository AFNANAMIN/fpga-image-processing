`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:49:41 06/02/2019
// Design Name:   cmt5
// Module Name:   D:/cmt4/cmt6.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cmt5
//
// Dependencies:
//  
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cmt6;

	// Inputs
	reg CLK_IN1;
	reg RESET;

	// Outputs
	wire CLK_OUT1;
	wire CLK_OUT2;
	wire CLK_OUT3;
	wire LOCKED;
	wire clk3;
	
	initial begin
		// Initialize Inputs
		CLK_IN1 = 0;
		RESET = 0;
		#10;
        
		

	end
	parameter period=10;
	always #period CLK_IN1=~CLK_IN1 ;

	// Instantiate the Unit Under Test (UUT)
	cmt5 uut (
		.CLK_IN1(CLK_IN1), 
		.CLK_OUT1(CLK_OUT1), 
		.CLK_OUT2(CLK_OUT2), 
		.CLK_OUT3(CLK_OUT3), 
		.RESET(RESET), 
		.LOCKED(LOCKED)
	);
	clocking_mod_mux  uut1 (
		.clk(CLK_IN1),	
		.clk1(CLK_OUT2), 
		.clk2(CLK_OUT3), 
		.clk3(clk3)
	);

endmodule

