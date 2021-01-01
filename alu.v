// ALU OP Code define

`define ADD 3'b000
`define SUB 3'b001
`define AND 3'b010
`define OR  3'b011
`define XOR 3'b100
`define SLT 3'b110
`define BZ  3'b111

module alu(op, a, b, ans, zero);

    input [7:0] a, b;
    input [2:0] op;
    input clk;
    
    output reg [7:0] ans;
    output zero;
    
    assign zero = (ans == 0);
    always @(op, a, b)
        begin
            case(op)
                ADD : ans <= a + b;
                SUB : ans <= a - b;
                AND : ans <= a & b;
                OR  : ans <= a | b;
                XOR : ans <= a ^ b;
                SLT : ans <= a <  b ? 1:0;
                BZ  : ans <= a - b;
                default: ans <= 8'bxxxx_xxxx;
        endcase
    end
endmodule