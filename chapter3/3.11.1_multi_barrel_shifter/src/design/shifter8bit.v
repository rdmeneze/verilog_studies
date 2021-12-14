module shifter8bit
(
  input wire[7:0]   a,
  input wire        lr,  
  input wire[2:0]   s,
  output wire[7:0]  y 
);

  wire[7:0] p0, p1;

  shifter8bit_right shift8b_r (
    .a(a),
    .s(s),
    .y(p0)   
  );

  shifter8bit_left shift8b_l (
    .a(a),
    .s(s),
    .y(p1)   
  );

  mux2to1 #( .DATA_WIDTH(8) ) mux(
    .sel(lr), 
    .a(p1),
    .b(p0),
    .o(y)  
  );
  
endmodule
