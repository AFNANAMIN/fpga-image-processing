`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:54:01 06/09/2019
// Design Name:   bram18
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/b_test.v
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

module b_test;

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
		#10
		clka = 0;
		ena = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		clkb = 0;
		enb = 0;
		addrb = 0;
		
		
		repeat(4)
		begin 
		#10
		ena = 1;
		wea = 1;
		addra = 0;
		dina = 3;
		enb = 0;
		addrb = 0;
		
		end
		
		
		repeat(4)
		begin 
		#10
		ena = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		enb = 1;
		addrb = 0;
		
		end
			
	
	
	end
      always begin
		       #10 clka=~clka;
	          #10 clkb=~clkb;
				 
		
		
			
			end
		
endmodule

