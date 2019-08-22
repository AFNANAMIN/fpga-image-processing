`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:51 06/11/2019 
// Design Name: 
// Module Name:    clk 
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
module clk #(parameter period=10)(
    output reg CLK
    );
initial  
begin
CLK=0;
end
always
#period CLK=~CLK;
endmodule
