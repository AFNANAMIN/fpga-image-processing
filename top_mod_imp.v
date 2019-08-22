
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:30 06/04/2019 
// Design Name: 
// Module Name:    top_module 
// Project Name: 
// Target Devices:   
// Tool versions: 
// Description: 
//
// Dependencies:  
//  
// Revision:    
// Revision 0.01 - File Created   
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_module_imp(
input CLK,
input [7:0]dina,
output  [7:0] out1,out2,out3,out4,out5,out6,out7,out8
    );
	 
	 
	 
	 wire  [7:0] out1,out2,out3,out4,out5,out6,out7,out8;
	wire [31:0]doutb1;
	wire write_clk,read_clk,ena,enb,wea1,reset;
	wire[7:0]data_in1;//,data_in2;
	wire[10:0]addra1;//,addra2;  
	wire[8:0]addrb1;//,addrb2;
	wire[2:0]sel;
	//wire [5:0]count;
   wire [2:0]start;
	wire [8:0] count;
wire reset_rd;
wire reset_wr;  
wire pause;
wire complete;
//wire reset;
// Outputs


    
	// Instantiate the Unit Under Test (UUT)
	
	agm agm_inst(
.en_rd(enb), 
.en_wr(ena), 
.reset_rd(reset_rd), 
.reset_wr(reset_wr), 
.clk_rd(read_clk), 
.clk_wr(write_clk), 
.W_BRAM_ADDR(addra1), 
.R_BRAM_ADDR(addrb1),
.pause(pause),
.wea(wea1),
.sel(sel),
.start(start),
.count(count)
);
	
	cmt_topmodule cmt_topmodule_inst (
		.CLK(CLK), 
		.RESET(reset),    
		.read_clk(read_clk), 
		.write_clk(write_clk)
	);
	
	

   CM cm_inst (
	   .clk_r(read_clk),
		.clk_w(write_clk),
		.count(count),
		.start(start),
		.ena(ena), 
		.enb(enb),
		.complete(complete), 
		.reset_rd(reset_rd),
      .reset_wr(reset_wr)
		
	);
	
	


	bram18 bram_inst1 (
		.clka(write_clk), 
		.ena(ena), 
		.wea(wea1), 
		.addra(addra1), 
		.dina(dina), 
		.clkb(read_clk), 
		.enb(enb), 
		.addrb(addrb1), 
		.doutb(doutb1)
	);
	
	
	sm_top_module sm_inst1 (
	   .clk(read_clk),     
		.module_in(doutb1),     
		.sel_mux(sel),    
		.out1(out8), 
		.out2(out4), 
		.out3(out7), 
		.out4(out3),
		.out5(out6),
		.out6(out2),
		.out7(out5),
		.out8(out1)
	);

assign reset=0;
endmodule 