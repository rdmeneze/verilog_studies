module gt2b(
	input 	wire[1:0] 	a,b,
	output 	wire 		gt
);

	wire s0, s1, s2, s3, s4, s5;
	
	assign s0 = (~a[1]) & ( a[0]) & (~b[1]) & (~b[0]);
	assign s1 = ( a[1]) & (~a[0]) & (~b[1]) & (~b[0]);
	assign s2 = ( a[1]) & (~a[0]) & (~b[1]) & ( b[0]);
	assign s3 = ( a[1]) & ( a[0]) & (~b[1]) & (~b[0]);
	assign s4 = ( a[1]) & ( a[0]) & (~b[1]) & ( b[0]);
	assign s5 = ( a[1]) & ( a[0]) & ( b[1]) & (~b[0]);
	
	assign gt = s0 | s1 | s2 | s3 | s4 | s5;
	
endmodule
	