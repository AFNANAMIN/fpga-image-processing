`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:00 06/11/2019
// Design Name:   top_module_imp
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/ttt_t.v
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

module ttt_t;

	// Inputs
	reg [7:0] data_in1;
	reg [7:0] data_in2;
	reg [7:0] ext_mem_adr;
	reg clk;
	reg reset;
	reg start;

	// Outputs
	wire complete;
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
		.data_in1(data_in1), 
		.data_in2(data_in2), 
		.ext_mem_adr(ext_mem_adr), 
		.clk(clk), 
		.reset(reset), 
		.start(start), 
		.complete(complete), 
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
		data_in1 = 0;
		data_in2 = 0;
		ext_mem_adr = 0;
		clk = 0;
		reset = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule
