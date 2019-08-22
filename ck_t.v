`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:01 06/11/2019
// Design Name:   clk
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/ck_t.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ck_t;

	// Outputs
	wire CLK;

	// Instantiate the Unit Under Test (UUT)
	clk uut (
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
  
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

