
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:12:07 06/05/2019 
// Design Name: 
// Module Name:    agn 
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
module agm_sim(
     input read_clk,
	  input write_clk,
    output reg[10:0] addra1,//,addra2,//write adress
    output reg[8:0] addrb1,//,addrb2//read address
	 output reg [4:0] count
    );




integer n;
reg start;
initial
begin
   
n=0; 
addra1=-8;     
start=0;
count=1;
addrb1=8'bxxxxxxxx;


end    

  
always@(posedge write_clk or negedge write_clk)
begin  

     if(addra1>=2040 && addra1<=2046)
      begin	 
		n<=n+1;
      addra1<=n+1;
		end  
		
		else if(addra1==2047)
begin  
   n<=0;
	addra1<=0;
	count<=count+1;
	if(start==0)
	 begin
		 start<=1;
		 
	 end
		
	
		
end
		
		else
        addra1<=(addra1+8);  //writing      		  
end  
    
  
always@(posedge read_clk or negedge read_clk)  
  begin  
  if(start)
  addrb1<=(addrb1+1)%256;//reading
  else
  addrb1<=0;
  end
  
  
endmodule
