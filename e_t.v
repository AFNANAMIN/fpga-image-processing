`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:39:24 06/11/2019
// Design Name:   Externel_memory
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/e_t.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Externel_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module e_t;

	// Outputs
	wire [7:0] memory_out;

	// Instantiate the Unit Under Test (UUT)
	Externel_memory uut (
		.memory_out1(memory_out1),
		.memory_out2(memory_out2)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

