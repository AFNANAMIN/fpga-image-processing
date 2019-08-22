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
module Externel_memory(
    input clk,clk_r,
	 input  pause,
	 input [2:0]start,
	 input ena,
    output reg [7:0]memory_out1,
	 output reg [7:0]out9
	    );
	 
	 
reg [7:0]ext_mem[0:65535];//65535
reg [32:0]i;
reg [15:0]j;
initial
begin
$readmemh("my_bram8x8.txt",ext_mem);
i=0; 
j=65280; 
end  


endmodule
