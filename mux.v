// MULTIPLEXOR

module mux(a, b, sel, out);

    input [7:0] a, b;
    input sel;
    
    output [7:0] out;
    
    assign out = sel ? b:a;
endmodule