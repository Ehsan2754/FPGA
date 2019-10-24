module word_or (input IA[31:0],
						 input IB[31:0],
						  output O[31:0] );
genvar i;
generate 
	for ( i=0; i<32; i = i+1 )
	begin : or_seg
	assign O[i] = IA[i] | IB[i];
	end 
endgenerate
endmodule 