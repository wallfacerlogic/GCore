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

module control(op, jump, brach, aluop, accwrite, accdst, memread, memwrite)
    input [7:0] op;

    output jump, brach, accwrite, memread, memwrite;
    output [2:0] aluop;
    output [1:0] accdst;

    always @(op)
        begin
            if(op[7]==1)
            begin
                aluop<=op[6:4];
                if(op==BZ)
                begin
                    brach<=1;
                    memread<=1;
                end
                else
                begin
                    memread<=1;
                    accdst<=2'b10;
                    accwrite<=1;
                end
            end
            else 
            begin
                case(op)
                 JUMP:begin
                          jump<=1;
                          memread<=1;
                      end
                 SAVE:begin
                          memwrite<=1;
                      end
                 LOAD:begin
                          accdst<=2'b00
                          accwrite<=1;
                          memread<=1;
                      end
                  SLL:begin
                          accdst<=2'b11;
                          accwrite<=1;
                      end
                LOADI:begin
                          accdst<=2'b01;
                          accwrite<=1;
                      end    
            end    
endmodule