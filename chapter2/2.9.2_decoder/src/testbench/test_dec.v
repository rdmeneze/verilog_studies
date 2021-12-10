`timescale 1ns/100ps

module tb_dec1to2;
  reg   a_tb, en_tb;
  wire[0:1]  s_tb;
  
  dec1to2 DUT( .a(a_tb), .en(en_tb), .s(s_tb) );
  
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

    en_tb = 1'b0;
    a_tb = 1'b1;
    #1;


  end
  
endmodule
