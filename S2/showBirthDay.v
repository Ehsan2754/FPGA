module showBirthDay(input [1:0] KEY, 
output [9:0] LED, 
output [47:0] HEX 
); 
genvar i;
generate 
		for (i=0; i<9; i=i+2)
		begin: gen 
		assign LED[i]=~KEY[1]; 
		end 
endgenerate 

genvar j;
generate 
		for (j=0; j<6; j=j+1) 
		begin: gen2 
			case(j)
			0: assign HEX[8*j+0] = ~KEY[0],
						 HEX[8*j+4] = ~KEY[0],
						 HEX[8*j+5] = ~KEY[0],
						 HEX[8*j+6] = ~KEY[0],
						 HEX[8*j+7] = ~KEY[0],
						 HEX[8*j+3] = ~KEY[0];
			
			1: assign HEX[8*j+6] = ~KEY[0],
						 HEX[8*j+7] = ~KEY[0];
			
			2: assign HEX[8*j+2] = ~KEY[0],
						 HEX[8*j+5] = ~KEY[0];
			
			3: assign HEX[8*j+6] = ~KEY[0],
						 HEX[8*j+7] = ~KEY[0];
			
			4: assign HEX[8*j+0] = ~KEY[0],
						 HEX[8*j+4] = ~KEY[0],
						 HEX[8*j+5] = ~KEY[0],
						 HEX[8*j+6] = ~KEY[0],
						 HEX[8*j+3] = ~KEY[0];
			
			5: assign HEX[8*j+6] = ~KEY[0],
						 HEX[8*j+7] = ~KEY[0];
			endcase 
		end 
endgenerate 
endmodule 