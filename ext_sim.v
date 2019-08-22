`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:13 06/11/2019 
// Design Name: 
// Module Name:    Externel_memory 
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
module ext_sim(
    input clk,
    output reg [7:0]memory_out1
	    );
	 
	 
reg [7:0]ext_mem[0:65535];//65535
integer i;

initial
begin
$readmemh("my_bram8x8.txt",ext_mem);
i=0;  
end  

always@(posedge clk or negedge clk)    
begin

      memory_out1<=ext_mem[i];
      i<=i+1;
  end
  
endmodule
