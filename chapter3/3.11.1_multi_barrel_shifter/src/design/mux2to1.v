module mux2to1(
  input  wire sel, 
  input  wire[7:0] bus_a, bus_b,
  output wire[7:0] bus_o
);

 assign bus_o = (sel) ? (bus_b) : (bus_a);

endmodule
