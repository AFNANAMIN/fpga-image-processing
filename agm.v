module agm(
    input en_rd,en_wr,reset_rd,reset_wr,clk_rd,clk_wr,
	 output reg [10:0] W_BRAM_ADDR,
	 output reg [8:0] R_BRAM_ADDR,
	 output reg pause,wea,
	 output reg [2:0]sel,
	 output reg [2:0]start,
	output reg [8:0] count
	 );
	 integer i,j,m;
	 
	 reg[2:0]sel_count;
	 reg write_again;
	 initial begin
	 i=0;
	 j=256;
	 m=0;
	 start=0;
	 wea=1;
	 pause=0;
	 write_again=0;
	 sel=0;

	 count=0;
	 end
parameter init_addr_wr=11'b00000000000,init_addr_rd=9'b000000000;

	always @ (posedge clk_rd)
	begin
		if(en_rd == 1 && start!=0)
			begin
				if(reset_rd)
				begin
					R_BRAM_ADDR <= init_addr_rd;
					//start<=2;
				end
				else if (!reset_rd )
				    begin
					 R_BRAM_ADDR <= i;
					 i<=(i+1)%512;
				        /*if(m%2==0)
				           begin
					           R_BRAM_ADDR <= i;
					           i<=(i+1)%256;
					         end
				            else if(m%2!=0)
				            begin
					            R_BRAM_ADDR <= j;
            	            j<=(j+1)%512;
                             if(j==511)
									    j<=256;
										 end*/               
						if(i==511)
						begin
						count<=count+1;
						if(sel==0)
						sel<=0;
						else
						sel<=(sel+1)%8;
						end
						
              end	 	//  //!reset_rd

			end 	// end if en_rd
			
		else
			R_BRAM_ADDR <= 9'bxxxxxxxxx;
	end
	
	always @ (posedge clk_wr)
	begin
		if(en_wr == 1  && !pause)
			begin//if wr_en
				if(reset_wr || W_BRAM_ADDR==2047 || write_again )//initial cond
				   begin
					W_BRAM_ADDR <= init_addr_wr;//inittial cond end
					write_again<=0;
					wea<=1;
					end
				else// not initial cond
				  begin
					 if(((W_BRAM_ADDR + 4) % 2047) == 0)
					     begin//bram full  cond
						    W_BRAM_ADDR <= 2047;
							// count<=count+1;
						      if(start==0)
							     begin
						        start<=1;
						         pause<=1;
									//sel<=0;
							     end// first time bram full condition
					    end//every time bram full condition end
					 else
					 
						 W_BRAM_ADDR <= (W_BRAM_ADDR + 4) % 2047;
				 end//else not initial cond  end
			end//if en_wr end
		
		else if(!en_wr || pause )//not en_wr 
	     begin
		   W_BRAM_ADDR <= 9'bxxxxxxxxx;
			wea<=0;
			write_again<=1;
	      pause<=0;
			end
			
	end
	
endmodule


