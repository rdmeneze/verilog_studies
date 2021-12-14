`timescale 1ns/100ps


module tb_mux2to1;
  reg[15:0] a_tb;
  reg[15:0] b_tb;
  wire[15:0] o_tb;
  reg sel;
  
  mux2to1 #( .DATA_WIDTH(16) ) DUT(
    .sel(sel), 
   	.a(a_tb), 
    .b(b_tb),
    .o(o_tb)  
  );
  
  initial
  begin
    a_tb = 16'hAAFF;
    b_tb = 16'h5500;
    
    sel = 1'b0;
    #1;
    
    sel = 1'b1;
    #1;
    
  end


endmodule