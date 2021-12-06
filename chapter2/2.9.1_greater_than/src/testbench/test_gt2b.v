// 2-bit greater-than circuit testbench

`timescale 1 ns / 10 ps

module greater_than_2b_tb;

    // signal declaration
    // 1-bit more than necessary on inputs to avoid overflow on for loops 
    reg[2:0] a, b;
    wire     out;
    
    // instance of circuit
    gt2b uut(.a(a), .b(b), .gt(out));
    
    // test vector
    initial
    begin
        for (a = 0; a < 3'b100; a = a + 1) 
        begin
            for (b = 0; b < 3'b100; b = b + 1) 
            begin
                # 20;
            end
        end
        $stop;
    end

endmodule