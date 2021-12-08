`timescale 1ns/100ps

module tb_dec3to8;
  reg[2:0]  a_tb;
  reg       en_tb; 
  wire[7:0] s_tb;
  integer   i = 0;
  
  dec3to8 DUT( .a({a_tb}), .en(en_tb), .s({s_tb}) );
  
  initial 
  begin
    en_tb = 1'b0;
    a_tb = 2'd0;
    #1;
    
    en_tb = 1'b1;
    #1;
    
    for (i = 0; i < 8; i=i+1) begin
      a_tb = 2'(i);
      #1;
    end

    en_tb = 1'b0;
    #1;
    
    
  end
  
endmodule