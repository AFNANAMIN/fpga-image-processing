`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:21:08 06/11/2019 
// Design Name: 
// Module Name:    AGT 
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
module AGT 
(
 output reg[10:0] addra1,addra2,
 output reg[8:0] addrb1,addrb2
    );
localparam delay=10;	 
integer i,j,count;

initial
begin
i=0;
j=50;
count=0;
addrb1=count;
addrb2=count;
addra1=count;
addra2=count;
repeat(4)  
begin
   #delay
      addra1=count;
		addra2=count;
		count=count+1;
		
	  repeat(12) 
     begin
	 #delay
      addra1=addra1+4;
		addra2=addra2+4;
      end 
 end 

repeat(12)
begin
#delay
addrb1=addrb1+1;  
addrb2=addrb2+1;  
end
 

end


//////////////////////////////////////////////
always@(*)
begin

repeat(4)  
begin
   #delay
      addra1=count;
		addra2=count;
		count=count+1;
		
	  repeat(12) 
     begin
	 #delay
      addra1=addra1+4;
		addra2=addra2+4;
		addrb1=addrb1+1;  
      addrb2=addrb2+1;
		addrb1=addrb1+1;  
      addrb2=addrb2+1;
      end 
 end 
  
  
 

end

endmodule
