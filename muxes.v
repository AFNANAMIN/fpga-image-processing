`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:01:56 06/03/2019 
// Design Name: 
// Module Name:    muxes 
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
module muxes(
input clk,clkk,clk1,clk2,
output reg clk3

    );

 always @(posedge clk or negedge clkk)
	begin
      if(clk)
         clk3 <= clk1;
		else if(!clk)
         clk3 <= clk2;
    end    
endmodule

