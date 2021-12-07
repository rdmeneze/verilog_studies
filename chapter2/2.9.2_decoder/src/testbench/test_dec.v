`timescale 1ns/100ps

module tb_dec1to2;
  reg   a_tb, en_tb;
  wire  s0_tb, s1_tb;
  
  dec1to2 DUT( .a(a_tb), .en(en_tb), .s({s1_tb, s0_tb}) );
  
  initial 
  begin
    a_tb = 1'b0;
    en_tb = 1'b0;
    #1;
    
    a_tb = 1'b0;
    en_tb = 1'b1;
    #1;
    
    a_tb = 1'b1;
    en_tb = 1'b1;
    #1;
    
  end
  
endmodule
