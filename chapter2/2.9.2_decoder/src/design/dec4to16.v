module dec4to16(
	input 	wire[3:0]	a,
	input 	wire		en,
	output	wire[15:0]	s
);

	wire sel[1:0];
	dec1to2 lsb_sel( .a(a[3]), 		.en(en), 		.s({sel[1], sel[0]}) 	);
	dec3to8 	msb( .a({a[2:0]}), 	.en(sel[1]), 	.s({s[15: 8]}) 			);
	dec3to8 	lsb( .a({a[2:0]}), 	.en(sel[0]), 	.s({s[ 7: 0]}) 			);

endmodule
