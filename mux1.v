`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:27 06/03/2019 
// Design Name: 
// Module Name:    mux1 
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
module mux1(
input [7:0] in1_mux1,in2_mux1,in3_mux1,in4_mux1,
input [1:0]sel_mux1,
output reg [7:0] o_mux1

    );

always @(*)
  begin
      case (sel_mux1)
         2'b00: o_mux1 = in1_mux1;
         2'b01: o_mux1 = in2_mux1;
         2'b10: o_mux1 = in3_mux1;
         2'b11: o_mux1 = in4_mux1;
      endcase
	end
endmodule
