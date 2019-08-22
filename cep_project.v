`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:44 06/11/2019 
// Design Name: 
// Module Name:    cep_project 
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
//wire[7:0] data_in1,data_in2;
wire CLK;
module cep_project(
    );
	 
	 clk clk_inst (
		.CLK(CLK)
	);

/*Externel_memory uut (
		.memory_out1(data_in1),
		.memory_out2(data_in2)
	);
	*/
top_module_imp top_inst (
		//.data_in1(data_in1), 
		//.data_in2(data_in2),
		//.clk(CLK), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4),    
		.out5(out5), 
		.out6(out6), 
		.out7(out7), 
		.out8(out8),    
		.out9(out9)
	);
endmodule
