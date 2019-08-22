`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:52:31 06/08/2019
// Design Name:   top_module
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/tot.v
// Project Name:  cmt4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tot;

	// Inputs
	reg [7:0] ext_mem_adr;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.ext_mem_adr(ext_mem_adr)
	);
       reg [10:0]addra1;
		 reg [10:0]addra2;
		 reg [8:0]addrb1;
		 reg [8:0]addrb2;
	initial begin
		// Initialize Inputs
		ext_mem_adr = 0;
       addra1=0;
		 addra2=0;
		 addrb1=0;
		 addrb2=0;
		// Wait 100 ns for global reset to finish
		#100;
	// Add stimulus here
end
      agm agm_inst (
		.ext_mem(ext_mem_adr), 
		.addra1(addra1), 
		.addra2(addra2), 
		.addrb1(addrb1), 
		.addrb2(addrb2)
	);
		bram18 bram_inst1 (
		.clka(write_clk), 
		.ena(ena), 
		.wea(wea1), 
		.addra(addra1), 
		.dina(data_in1), 
		.clkb(read_clk), 
		.enb(enb), 
		.addrb(addrb1), 
		.doutb(doutb1)
	);
	
	always@(*)
begin
repeat(10)
begin
#100
addra1=addra1+4;
addra2=addra2+4;
addrb1=addrb1+1;
addrb2=addrb2+1;

end

end
endmodule

