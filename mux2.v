`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:01 06/03/2019 
// Design Name: 
// Module Name:    mux2 
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
module mux2(
input [7:0] in1_mux2,in2_mux2,in3_mux2,in4_mux2,
input [1:0]sel_mux2,
output reg [7:0] o_mux2

    );

always @(*)
  begin
      case (sel_mux2)
         2'b00: o_mux2 = in2_mux2;
         2'b01: o_mux2 = in3_mux2;
         2'b10: o_mux2 = in4_mux2;
         2'b11: o_mux2 = in1_mux2;
      endcase
	end
endmodule


