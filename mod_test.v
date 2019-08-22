`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:19:55 06/12/2019
// Design Name:   mod
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/mod_test.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mod_test;

	// Inputs
	reg CLK_IN1;

	// Outputs
	wire doutb1;
	wire CLK_OUT1;
	wire CLK_OUT2;
	wire CLK_OUT3;

	// Instantiate the Unit Under Test (UUT)
	mod uut (
		.CLK_IN1(CLK_IN1), 
		.doutb1(doutb1), 
		.CLK_OUT1(CLK_OUT1), 
		.CLK_OUT2(CLK_OUT2), 
		.CLK_OUT3(CLK_OUT3)
	);

	initial begin
		// Initialize Inputs
		CLK_IN1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
          
		// Add stimulus here

	end
      always #10 CLK_IN1=~CLK_IN1;
endmodule

