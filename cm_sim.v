`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:14:52 06/05/2019 
// Design Name: 
// Module Name:    CM 
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
module cm_sim(
    input clk,
	 output reg wea1,
    output reg ena,enb,
    output reg complete,
    output reg [2:0]sel
    );
	 
initial
begin
#10
ena=1;
enb=1;
sel=0;    
wea1=1;
end   
   
always@(posedge clk or negedge clk)
begin     
sel<=(sel+1)%8;  
end

always@(*)
begin
ena=1;
enb=1;
wea1=1; 
end
endmodule
