module dec2to4(
	input 	wire[1:0]	a,
	input 	wire		en,
	output	wire[3:0]	s
);

	wire sel[1:0];
	
	// instance of dec1to2 circuit
	dec1to2 sel_bit( .a(a[1]), .en(en), .s({sel[1], sel[0]}) );

	dec1to2 lsb( .a(a[0]), .en(sel[0]), .s({s[1:0]}) );
	dec1to2 msb( .a(a[0]), .en(sel[1]), .s({s[3:2]}) );

endmodule
