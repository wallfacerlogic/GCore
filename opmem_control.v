// Opmem Control
#include "opmem/opmem.v"

module opmem_control(write, clk, writeop, op, addr, rst, oce)
    input [7:0] writeop;
    input [3:0] addr;
    input write, clk, rst, oce;

    output [7:0] op;

//have some bugs
    opmem opmem
        (
            .dout(op), //output [7:0] dout
            .clk(clk), //input clk
            .oce(~(oce)), //input oce
            .ce(write), //input ce
            .reset(rst), //input reset
            .wre(1), //input wre
            //tag1
            .ad(addr), //input [2:0] ad 
            .din(write) //input [7:0] din
        );
endmodule
