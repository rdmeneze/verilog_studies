
module dec1to2(
	input 	wire a,en,
	output	wire[1:0] s
);

	 assign s = {en & a, en & ~a};



//  assign s[0] = en & ~a;

//	assign s[1] = en & a;

endmodule