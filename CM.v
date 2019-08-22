`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:14:52 06/05/2019 
// Design Name: 
// Module Name:    CM 
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
module CM(
    input clk_r,
	 input clk_w,
	 input [8:0]count,
	 input[2:0]start,
    output reg ena,enb,
    output reg complete,
	 output reg reset_rd,
    output reg reset_wr
    );
	 //localparam delay=10;
	 reg [2:0]read_count;
	 reg [2:0]write_count;
initial
begin
ena=1;
enb=1;
read_count=0;
write_count=0;
reset_rd=0;
reset_wr=0;
end



always@(posedge clk_r)
begin
if(start)
begin
if(read_count==0 && reset_rd==0 )
begin
//read_count<=0;
enb<=1;
reset_rd<=1;
end
else
begin
reset_rd<=0;
end
read_count<=1;
end
if(count>=256)
complete=1;
else 
complete=0;

end


always@(posedge clk_w)
begin
if(write_count==0 && reset_wr==0)
begin
ena<=1;
reset_wr<=1;
end
else
begin
reset_wr<=0;
end
write_count<=2;
end

endmodule
