`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:39 06/03/2019 
// Design Name: 
// Module Name:    mux3 
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
module mux3(
input [7:0] in1_mux3,in2_mux3,in3_mux3,in4_mux3,
input [1:0] sel_mux3,
output reg [7:0]o_mux3

    );

always @(*)
  begin
      case (sel_mux3)
         2'b00: o_mux3 = in3_mux3;
         2'b01: o_mux3 = in4_mux3;
         2'b10: o_mux3 = in1_mux3;
         2'b11: o_mux3 = in2_mux3;
      endcase
	end

endmodule




