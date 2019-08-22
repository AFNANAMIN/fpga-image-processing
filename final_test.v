`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:13:15 07/07/2019
// Design Name:   top_module_imp
// Module Name:   C:/Users/cl/Desktop/project backup (2)/project backup/cmt4/final_test.v
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

module final_test;

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
	wire [7:0] out9;

	// Instantiate the Unit Under Test (UUT)
	top_module_imp uut (
		.CLK(CLK), 
		.out1(out9), 
		.out2(out8), 
		.out3(out7), 
		.out4(out6), 
		.out5(out5), 
		.out6(out4), 
		.out7(out3), 
		.out8(out2), 
		.out9(out1)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #50 CLK=~CLK;
endmodule

