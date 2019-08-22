`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:48:42 07/06/2019
// Design Name:   sm_top_module
// Module Name:   C:/Users/cl/Desktop/project backup (2)/project backup/cmt4/tu.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sm_top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tu;

	// Inputs
	reg clk;
	reg [31:0] module_in;
	reg [2:0] sel_mux;

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
	sm_top_module uut (
		.clk(clk), 
		.module_in(module_in), 
		.sel_mux(sel_mux), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5), 
		.out6(out6), 
		.out7(out7), 
		.out8(out8)
	);
	agm instance_name (
    .en_rd(en_rd), 
    .en_wr(en_wr), 
    .reset_rd(reset_rd), 
    .reset_wr(reset_wr), 
    .clk_rd(clk_rd), 
    .clk_wr(clk_wr), 
    .W_BRAM_ADDR(W_BRAM_ADDR), 
    .R_BRAM_ADDR(R_BRAM_ADDR), 
    .pause(pause), 
    .wea(wea), 
    .sel(sel_mux), 
    .start(start)
    );


	initial begin
		// Initialize Inputs
		clk = 0;
		module_in = 2345;
		sel_mux = 0;

		// Wait 100 ns for global reset to finish
		#100;
		sel_mux = 1;
		#10
		sel_mux = 2;
		#10
		sel_mux = 3;
       
		// Add stimulus here

	end
    always #10 clk=~clk;  
endmodule

