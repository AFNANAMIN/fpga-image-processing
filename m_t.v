`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:23 06/11/2019
// Design Name:   CM
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/m_t.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module m_t;

	// Inputs
	reg clk;
	reg start;

	// Outputs
	wire wea1;
	wire wea2;
	wire ena;
	wire enb;
	wire complete;
	wire [1:0] sel;

	// Instantiate the Unit Under Test (UUT)
	CM uut (
		.clk(clk), 
		.start(start), 
		.wea1(wea1), 
		.wea2(wea2), 
		.ena(ena), 
		.enb(enb), 
		.complete(complete), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

