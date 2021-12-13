`timescale 1ns/100ps


module tb_mux2to1;
  reg[7:0] bus_a_tb;
  reg[7:0] bus_b_tb;
  wire[7:0] bus_o_tb;
  reg sel;
  
  mux2to1 DUT(
    .sel(sel), 
   	.bus_a(bus_a_tb), 
    .bus_b(bus_b_tb),
    .bus_o(bus_o_tb)  
  );
  
  initial
  begin
    bus_a_tb = 8'hAA;
    bus_b_tb = 8'h55;
    
    sel = 1'b0;
    #1;
    
    sel = 1'b1;
    #1;
    
  end


endmodule