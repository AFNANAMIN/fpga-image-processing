`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:49:34 06/11/2019
// Design Name:   top_module_imp
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/test.v
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

module test;

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

		
		CLK_IN1=0;
		RESET = 0;
		START=1;
		CLK=0;
		#5
		 ena=1;
		 wea1=1;
		 wea2=1;
       addra1=0;
		 addra2=0;
		 addrb1=0;
		 addrb2=0;
		 data_in1=8;
		 data_in2=8;
		 count=0;
		 sel=2;
		 i=0;  
       j=50;		 
		 enb=0;
		// read_clk=0;
		// write_clk=0;  
	$readmemb("my_bram8x8.coe",ext_mem);
	
repeat(4)  
begin
   #5
      addra1=count;
		addra2=count;
		count=count+1;
		
	  repeat(12) 
     begin
	 #10
      addra1=addra1+4;
		addra2=addra2+4;
      data_in1=ext_mem[i];
		data_in2=ext_mem[j];
      i=i+1;
      j=j+1;
      end 
 end  
 #10
enb=1;
ena=0;
wea1=0;
wea2=0;
sel=0;
repeat(12)
begin
#10
if(sel==4)
sel=0;
else
sel=sel+1;
addrb1=addrb1+1;
addrb2=addrb2+1;  
end
end
always #10 clk=~clk;      
endmodule

