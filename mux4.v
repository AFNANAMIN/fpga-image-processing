`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:41 06/03/2019 
// Design Name: 
// Module Name:    mux4 
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
module mux4(
input [7:0] in1_mux4,in2_mux4,in3_mux4,in4_mux4,
input [1:0] sel_mux4,
output reg [7:0] o_mux4
    );

always @(*)
  begin
      case (sel_mux4)
         2'b00: o_mux4 = in4_mux4;
         2'b01: o_mux4 = in1_mux4;
         2'b10: o_mux4 = in2_mux4;
         2'b11: o_mux4 = in3_mux4;
      endcase
	end

endmodule
