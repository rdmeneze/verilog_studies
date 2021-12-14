`timescale 1ns/100ps


module tb_shifter8b;
  reg[7:0]      a_tb;
  wire[7:0]     o_tb;
  reg[2:0]      shift;
  reg           lr;
  
  shifter8bit  DUT(
    .s(shift), 
   	.a(a_tb),
   	.lr(lr), 
    .y(o_tb)  
  );
  
  initial
  begin
    lr = 1'b0; // move left
    a_tb = 8'b00100100;
    
    shift = 2'h0;
    #1;
    
    shift = 3'h1;
    #1;

    shift = 3'h2;
    #1;

    shift = 3'h3;
    #1;

    shift = 3'h4;
    #1;

    shift = 3'h5;
    #1;

    shift = 3'h6;
    #1;

    shift = 3'h7;
    #1;

    shift = 3'h0;
    #1;

    lr = 1'b1; // move right
    shift = 2'h0;
    #1;
    
    shift = 3'h1;
    #1;

    shift = 3'h2;
    #1;

    shift = 3'h3;
    #1;

    shift = 3'h4;
    #1;

    shift = 3'h5;
    #1;

    shift = 3'h6;
    #1;

    shift = 3'h7;
    #1;

    shift = 3'h0;
    #1;
    
  end
endmodule


