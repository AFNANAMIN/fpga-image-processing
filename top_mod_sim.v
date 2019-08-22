`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:38:55 06/11/2019 
// Design Name: 
// Module Name:    top_mod_sim 
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
// Create Date:    19:32:21 06/10/2019 
// Design Name: 
// Module Name:    sim 
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
// Create Date:    20:53:33 06/08/2019 
// Design Name: 
// Module Name:    TOP 
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

module top_module_sim(
  //input [7:0]data_in1,data_in2,
  input  [7:0]ext_mem_adr,
  input clk,
  input start,
  output complete,
output wire [7:0] out1,out2,out3,out4,out5,out6,out7,out8,out9
    );
	
// Inputs
	reg CLK_IN1;
	reg RESET;
   reg CLK;
	
reg[10:0]addra1,addra2;
reg[8:0]addrb1,addrb2;
reg [7:0]data_in1,data_in2;	
reg [7:0]ext_mem[0:100];
integer count;
integer i,j;
reg ena,enb,wea1,wea2;
reg [1:0]sel;    
wire read_clk,write_clk;
wire [31:0] doutb1,doutb2;
	  
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	cmt_topmodule uut (  
		.CLK(CLK),   
		.RESET(RESET), 
		.read_clk(read_clk), 
		.write_clk(write_clk)
	);

    
	// Instantiate the Unit Under Test (UUT)
	
	
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
	
	

initial begin

		
		CLK_IN1=0;
		RESET = 0;
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
endmodule   
