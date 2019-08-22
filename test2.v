`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:07 06/12/2019
// Design Name:   bram18
// Module Name:   C:/Users/cl/Desktop/bo18/cmt4/top_test.v
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
  
module top_test;  

	 
	reg CLK;   
	 
	wire  [7:0] out1,out2,out3,out4,out5,out6,out7,out8;
	wire [31:0]doutb1;
	wire write_clk,read_clk,ena,enb,wea1,reset;
	wire[7:0]data_in1;//,data_in2;
	wire[10:0]addra1;//,addra2;  
	wire[8:0]addrb1;//,addrb2;
	wire[2:0]sel;
	wire [4:0]count;

	
    
	// Instantiate the Unit Under Test (UUT)
	
	agm_sim agm_inst (
		.read_clk(read_clk),
		.write_clk(write_clk),  
		.addra1(addra1),     
		.addrb1(addrb1), 
		.count(count)
	);
		ext_sim uut (
		.clk(write_clk),
		.memory_out1(data_in1)
		
	);
		
	cmt_topmodule cmt_topmodule_inst (
		.CLK(CLK), 
		.RESET(reset),    
		.read_clk(read_clk), 
		.write_clk(write_clk)
	);
	
	

   cm_sim cm_inst (
	   .clk(read_clk),
		.ena(ena), 
		.enb(enb), 
		.wea1(wea1),
		.complete(complete), 
		.sel(sel)
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
	
	
	sm_sim sm_inst1 (
	   .clk(read_clk),     
		.module_in(doutb1),     
		.sel_mux(sel),    
		.out1(out8), 
		.out2(out7), 
		.out3(out6), 
		.out4(out5),
		.out5(out4),
		.out6(out3),
		.out7(out2),
		.out8(out1)
	);

	localparam period=10;
initial     
begin
CLK=0;  
end
always
#period CLK=~CLK;


assign reset=0;
assign start=1;   
endmodule 


