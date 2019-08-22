`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:52:34 06/11/2019
// Design Name:   top_module_imp
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/test_sim.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module_imp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sim;

	// Inputs
	reg CLK;

	// Outputs
	wire [7:0] out1;
	wire [7:0] out2;
	wire [7:0] out3;
	wire [7:0] out4;
	wire [7:0] out5;
	wire [7:0] out6;
	wire [7:0] out7;
	wire [7:0] out8;

	// Instantiate the Unit Under Test (UUT)
	top_module_imp uut (
		.CLK(CLK), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5), 
		.out6(out6), 
		.out7(out7), 
		.out8(out8)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
  always #100 CLK=~CLK;
endmodule

