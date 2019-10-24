module multipelexer4_1 (input [3:0] I , 
									input [1:0] Select, 
														output O );

assign O  = ((~Select [0]) & (~Select [1]) & I[0]) |  
				 ((~Select [0]) & (Select [1]) & I[1]) |
				 ((Select [0]) & (~Select [1]) & I[2]) |
				  ((Select [0]) & (Select [1]) & I[3])	 ;
endmodule 