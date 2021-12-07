`timescale 1ns/100ps

module tb_dec2to4;
  reg[1:0]   a_tb, en_tb;
  wire[3:0]  s_tb;
  integer i = 0;
  
  dec2to4 DUT( .a({a_tb}), .en(en_tb), .s({s_tb}) );
  
  initial 
  begin
    en_tb = 1'b0;
    a_tb = 2'd0;
    #1;
    
    en_tb = 1'b1;
    #1;
    
    for (i = 0; i < 4; i=i+1) begin
      a_tb = 2'(i);
      #1;
    end

    en_tb = 1'b0;
    #1;
    
    
  end
  
endmodule