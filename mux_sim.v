`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:55 06/29/2019 
// Design Name: 
// Module Name:    mux 
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

module mux_sim(
input clk,
input [7:0] in1_mux, in2_mux, in3_mux, in4_mux, in5_mux, in6_mux, in7_mux, in8_mux,
input [2:0]sel_mux,
output reg [7:0] o_mux

    );

always @(*)
  begin
      case (sel_mux)
         3'b000: o_mux = in1_mux;
         3'b001: o_mux = in2_mux;
         3'b010: o_mux = in3_mux;
         3'b011: o_mux = in4_mux;
			3'b100: o_mux = in5_mux;
			3'b101: o_mux = in6_mux;
			3'b110: o_mux = in7_mux;
			3'b111: o_mux = in8_mux;
      endcase
	end
endmodule


