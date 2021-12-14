//# Mutiplexer 2 to 1
//
// generic multiplexer with parametric data width
//
// author:	Rafael Dias Menezes <rdmeneze@gmail.com>
// date:   	dez/2021
//

module mux2to1
#(
  parameter DATA_WIDTH = 0
)
(
  input  wire                   sel, 
  input  wire[DATA_WIDTH-1:0]   a, b,
  output reg[DATA_WIDTH-1:0]    o
);

  always@(*)
  begin
    if (sel) begin
      o = b;
    end
    else
    begin
      o = a;
    end
  end
endmodule
