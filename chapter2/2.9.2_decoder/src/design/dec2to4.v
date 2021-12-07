module dec2to4(
	input 	wire[1:0] 	a,
	input 	wire			    en,
	output	wire[3:0] 	s
);

	wire msb_en, lsb_en;
	
	// instance of dec1to2 circuit
	dec1to2 lsb_sel( .a(a[1]), .en(en), .s({msb_en, lsb_en}) );

	dec1to2 msb( .a(a[0]), .en(msb_en), .s({s[3], s[2]}) );
	dec1to2 lsb( .a(a[0]), .en(lsb_en), .s({s[1], s[0]}) );
	
endmodule
