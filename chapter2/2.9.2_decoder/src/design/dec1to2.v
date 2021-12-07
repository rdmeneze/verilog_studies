
module dec1to2(
	input 	wire a,en,
	output	wire[1:0] s
);

	assign s = {en&(~a), en&a};

endmodule