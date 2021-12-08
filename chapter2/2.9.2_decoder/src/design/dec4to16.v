module dec4to16(
	input 	wire[3:0]	a,
	input 	wire		en,
	output	wire[15:0]	s
);

	wire bit_sel[3:0];
	
	// instance of dec1to2 circuit
	dec2to4 lsb_sel( .a({a[3], a[2]}), .en(en), .s({bit_sel[3], bit_sel[2], bit_sel[1], bit_sel[0]}) );
	dec2to4    dec3( .a({a[1], a[0]}), .en(bit_sel[3]), .s({s[15], s[14], s[13], s[12]}) );
	dec2to4    dec2( .a({a[1], a[0]}), .en(bit_sel[2]), .s({s[11], s[10], s[ 9], s[ 8]}) );
	dec2to4    dec1( .a({a[1], a[0]}), .en(bit_sel[1]), .s({s[ 7], s[ 6], s[ 5], s[ 4]}) );
	dec2to4    dec0( .a({a[1], a[0]}), .en(bit_sel[0]), .s({s[ 3], s[ 2], s[ 1], s[ 0]}) );

endmodule
