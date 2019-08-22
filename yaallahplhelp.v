`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:06:06 07/09/2019
// Design Name:   top_module_imp
// Module Name:   C:/Users/AFNAN/Desktop/project backup (2) - Copy/project backup/cmt4/yaallahplhelp.v
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

module yaallahplhelp;

	// Inputs
	reg CLK;
	reg [7:0] dina;

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
		.dina(dina),   
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5), 
		.out6(out6), 
		.out7(out7), 
		.out8(out8), 
		.out9(out9)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		dina = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

Externel_memory instance_name (
    .clk(clk), 
    .clk_r(clk_r), 
    .pause(pause), 
    .start(start), 
    .ena(ena), 
    .memory_out1(memory_out1), 
    .out9(out9)
    );

    always #50 CLK=~CLK;

