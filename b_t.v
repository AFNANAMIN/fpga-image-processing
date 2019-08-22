`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:51:26 06/12/2019
// Design Name:   bram18
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/b_t.v
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

module b_t;

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
reg [7:0]ext_mem[0:100];
integer i;
integer j;
localparam delay=100;
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
		ena = 1;
		wea = 1;
		addra = 0;
		dina = 0;
		clkb = 0;
		enb = 1;
		addrb = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here


	
	


$readmemb("my_bram8x8.coe",ext_mem);
i=0;
j=100;


     
      #delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
  #delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
		#delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
		#delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
		#delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
		#delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
		#delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
		#delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
		#delay
      dina<=ext_mem[i];
		addra<=addra+4;
		addrb<=addrb+1;
     i=i+1;
      j=j+1;
#10 
  //wea<=0;
  repeat(10)
     begin
      #30
		addrb=addrb+1;
     
  end
end  
always #100 clka=~clka;
always #100 clkb=~clkb;

endmodule

