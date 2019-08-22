`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:23 06/03/2019
// Design Name:   mux2
// Module Name:   D:/cmt4/cmt4/cep_practice/top_module.v
// Project Name:  cep_practice
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sm_top_module(
input clk,
input [31:0]module_in,
input [2:0]sel_mux,
output [7:0]out1, out2, out3, out4, out5,out6,out7,out8

);

  
	
wire [7:0] o1;
wire [7:0] o2;	
wire [7:0] o3;
wire [7:0] o4;
wire [7:0] o5;    	
wire [7:0] o6;
wire [7:0] o7;	
wire [7:0] o8;


	
	
register reg_inst (
.clk(clk),
.doutb(module_in),   	
.o1(o1), 	
.o2(o2),	
.o3(o3), 	
.o4(o4)
	);

	
 
bramRegister bram_reg_inst (
    .doutb(module_in), 
    .o1(o5), 
    .o2(o6), 
    .o3(o7), 
    .o4(o8)
    );


	
mux m1 (		
.in1_mux(o1), 		
.in2_mux(o2), 		
.in3_mux(o3), 		
.in4_mux(o4), 
.in5_mux(o5),      
.in6_mux(o6), 
.in7_mux(o7), 
.in8_mux(o8), 	
.sel_mux(sel_mux), 	
.o_mux(out1)
	);



	
mux m2 (	
.in1_mux(o2), 	
.in2_mux(o3),   	
.in3_mux(o4), 
.in4_mux(o5), 
.in5_mux(o6), 
.in6_mux(o7), 
.in7_mux(o8), 
.in8_mux(o1), 
.sel_mux(sel_mux), 
.o_mux(out2)

);



mux m3 (

.in1_mux(o3), 		
.in2_mux(o4), 		
.in3_mux(o5), 		
.in4_mux(o6),
.in5_mux(o7), 
.in6_mux(o8), 
.in7_mux(o1), 
.in8_mux(o2), 				
.sel_mux(sel_mux), 		
.o_mux(out3)
	
);
	

	
mux m4 (
		
.in1_mux(o4), 		
.in2_mux(o5), 		
.in3_mux(o6), 		
.in4_mux(o7),
.in5_mux(o8), 
.in6_mux(o1), 
.in7_mux(o2), 
.in8_mux(o3), 				
.sel_mux(sel_mux), 		
.o_mux(out4)
	);


mux m5 (
    .in1_mux(o5), 
    .in2_mux(o6), 
    .in3_mux(o7), 
    .in4_mux(o8),
     .in5_mux(o1), 
     .in6_mux(o2), 
     .in7_mux(o3), 
     .in8_mux(o4), 	 
    .sel_mux(sel_mux), 
    .o_mux(out5)
    );

mux m6 (
    .in1_mux(o6), 
    .in2_mux(o7), 
    .in3_mux(o8), 
    .in4_mux(o1),
    .in5_mux(o2), 
    .in6_mux(o3), 
    .in7_mux(o4), 
    .in8_mux(o5), 	 
    .sel_mux(sel_mux), 
    .o_mux(out6)
    );

mux m7 (
    .in1_mux(o7), 
    .in2_mux(o8), 
    .in3_mux(o1), 
    .in4_mux(o2),
    .in5_mux(o3), 
    .in6_mux(o4), 
     .in7_mux(o5), 
     .in8_mux(o6), 	 
    .sel_mux(sel_mux), 
    .o_mux(out7)
    );
	 
	 mux m8 (
    .in1_mux(o8), 
    .in2_mux(o1), 
    .in3_mux(o2), 
    .in4_mux(o3), 
	 .in5_mux(o4), 
    .in6_mux(o5), 
    .in7_mux(o6), 
    .in8_mux(o7), 
    .sel_mux(sel_mux), 
    .o_mux(out8)
    );
	 

   
endmodule

