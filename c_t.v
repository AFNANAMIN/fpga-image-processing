`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:21:36 06/11/2019
// Design Name:   bram18
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/c_t.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bram18
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module c_t;

	// Inputs
	reg clka;
	reg ena;
	reg [0:0] wea;
	reg [10:0] addra;
	reg [7:0] dina;
	reg clkb;
	reg enb;
	reg [8:0] addrb;

	// Outputs
	wire [31:0] doutb;

	// Instantiate the Unit Under Test (UUT)
	bram18 uut (
		.clka(clka), 
		.ena(ena), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.clkb(clkb), 
		.enb(enb), 
		.addrb(addrb), 
		.doutb(doutb)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		ena = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		clkb = 0;
		enb = 0;
		addrb = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

