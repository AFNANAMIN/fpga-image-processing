`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:15:18 07/09/2019
// Design Name:   top_module_imp
// Module Name:   C:/Users/AFNAN/Desktop/project backup (2) - Copy/project backup/cmt4/testplz.v
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

module testplz;

	// Inputs
	reg CLK;
	reg [7:0] dina;

	// Outputs
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
		.CLK(CLK), 
		.dina(dina), 
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
	 
	 
reg [7:0]ext_mem[0:65535];//65535
reg [32:0]i;
reg [15:0]j;


always@(posedge CLK)    
begin
   if(ena && !pause)  
	begin
      dina<=ext_mem[i];
      i<=i+1;
	end
	else
	dina<=8'bxxxxxxxx;
  end  
  always@(posedge clk_r)
  begin
  if(start==1)
  begin
  out9<=ext_mem[j];
  j<=j+1;
  end
  end
endmodule

	initial begin
		// Initialize Inputs
		CLK = 0;
		dina = 0;   
		$readmemh("my_bram8x8.txt",ext_mem);
i=0; 
j=65280;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	
	/*Externel_memory instance_name (
    .clk(CLK), 
    .clk_r(read_clk), 
    .pause(pause), 
    .start(start), 
    .ena(ena), 
    .memory_out1(dina), 
    .out9(out9)
    );*/
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
	
	
	

    always #50 CLK=~CLK;
      
endmodule

