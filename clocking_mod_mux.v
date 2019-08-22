`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:23 06/10/2019 
// Design Name: 
// Module Name:    clocking_mod_mux 
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
module clocking_mod_mux(
input clk,clk1,clk2,
output  clk3
    );
 assign clk3=(clk)?clk1:clk2 ;	 
endmodule
