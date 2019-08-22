`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:38 06/12/2019
// Design Name:   cmt5
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/c_tt.v
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

module c_tt;

	// Inputs
	reg CLK_IN1;
	reg RESET;

	// Outputs
	wire CLK_OUT1;
	wire CLK_OUT2;
	wire CLK_OUT3;
	wire LOCKED;

	// Instantiate the Unit Under Test (UUT)
	cmt5 uut (
		.CLK_IN1(CLK_IN1), 
		.CLK_OUT1(CLK_OUT1), 
		.CLK_OUT2(CLK_OUT2), 
		.CLK_OUT3(CLK_OUT3), 
		.RESET(RESET), 
		.LOCKED(LOCKED)
	);

	initial begin
		// Initialize Inputs
		CLK_IN1 = 0;
		RESET = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #10 CLK_IN1=~CLK_IN1;
endmodule

