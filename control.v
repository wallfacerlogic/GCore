// CONTROLLER

`define NOP   4'b0000
`define JUMP  4'b0001
`define SAVE  4'b0010
`define LOAD  4'b0011
`define SLL   4'b0100
`define LOADI 4'b0101
`define ADD   4'b1000
`define SUB   4'b1001
`define AND   4'b1010
`define OR    4'b1011
`define XOR   4'b1100
`define SLT   4'b1110
`define BZ    4'b1111

module control(op, jump, brach, aluop, accumwrite, regdst, memread, memwrite);

endmodule