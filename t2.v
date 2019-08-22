`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:04:10 06/12/2019 
// Design Name: 
// Module Name:    t2 
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
//input [7:0]data_in1,data_in2,
//input  [7:0]ext_mem_adr,
//input CLK,
//input reset,
//input start,
//output complete,  
output  [7:0] out1,out2,out3,out4,out5,out6,out7,out8//,out9
    );
	 
	reg CLK;   
	 
	 
	 // Outputs
	wire [31:0]doutb1,doutb2;
	wire write_clk,read_clk,ena,enb,wea1,wea2,reset;
	wire[7:0]data_in1,data_in2;
	wire[10:0]addra1,addra2;  
	wire[8:0]addrb1,addrb2;
	wire[1:0]sel;
	//reg[7:0] mux_out1,mux_out2,mux_out3,mux_out4,mux_out5,mux_out6,mux_out7,mux_out8;
	
//inputs
    
	// Instantiate the Unit Under Test (UUT)
	
	agm agm_inst (
		//.ext_mem(ext_mem_adr), 
		.addra1(addra1), 
		.addra2(addra2), 
		.addrb1(addrb1), 
		.addrb2(addrb2)
	);
		Externel_memory uut (
		.memory_out1(data_in1),
		.memory_out2(data_in2)
	);
		
	cmt_topmodule cmt_topmodule_inst (
		.CLK(CLK), 
		.RESET(reset), 
		.read_clk(read_clk), 
		.write_clk(write_clk)
	);
	
	

   CM cm_inst (
	   .clk(write_clk),
		//.start(start), 
		.ena(ena), 
		.enb(enb), 
		.wea1(wea1),
		.wea2(wea2),
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
	
	bram18 bram_inst2 (
		.clka(write_clk), 
		.ena(ena), 
		.wea(wea2), 
		.addra(addra2), 
		.dina(data_in2), 
		.clkb(read_clk), 
		.enb(enb), 
		.addrb(addrb2), 
		.doutb(doutb2)
	);
	
	
	sm_top_module sm_inst1 (
		.module_in(doutb1), 
		.sel_mux(sel), 
		.out1(out4), 
		.out2(out3), 
		.out3(out2), 
		.out4(out1)
	);
	
sm_top_module sm_inst2 (
		.module_in(doutb2), 
		.sel_mux(sel), 
		.out1(out8), 
		.out2(out7), 
		.out3(out6), 
		.out4(out5)
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