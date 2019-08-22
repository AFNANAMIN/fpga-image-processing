`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:51 06/30/2019 
// Design Name: 
// Module Name:    reg_sim 
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
module reg_sim(
input clk,
 input [31:0] doutb,
output reg [7:0] o1,o2,o3,o4
    );
always@(posedge clk)
begin
o1<=doutb[7:0];
o2<=doutb[15:8];
o3<=doutb[23:16];
o4<=doutb[31:24];
end


endmodule
