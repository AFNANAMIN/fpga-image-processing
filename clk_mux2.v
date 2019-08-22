`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:00:10 07/01/2019 
// Design Name: 
// Module Name:    clk_mux2 
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
module clk_mux2(
input  clk,clk1,clk2,
output reg  clk3
    );
	 
always@(*)
begin
if(clk)
clk3<=clk1;
else if(!clk)
clk3<=clk2;
end


endmodule
