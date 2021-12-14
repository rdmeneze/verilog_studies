module shifter8bit_right
(
  input wire[7:0] a,
  input wire[2:0] s,
  output wire[7:0] y 
);
  wire[7:0] p0, p1;
  
  assign p0 = s[0] ? { a[0]   ,  a[7:1]} : a;
  assign p1 = s[1] ? {p0[1:0] , p0[7:2]} : p0;
  assign y  = s[2] ? {p1[3:0] , p1[7:4]} : p1;
  
endmodule