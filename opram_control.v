// Opmem Control
#include "opmem/opmem.v"

module opmem_control(write, clk, writeop, op, addr, rst, oce);
    input [7:0] writeop;
    input [3:0] addr;
    input write, clk, rst, oce;

    output [7:0] op;
//--------Copy here to design--------

    opram opram(
        .dout(op), //output [7:0] dout
        .clk(clk), //input clk
        .oce(oce), //input oce
        .ce(1), //input ce
        .reset(rst), //input reset
        .wre(write), //input wre
        .ad(add), //input [2:0] ad
        .din(writeop) //input [7:0] din
    );
//--------Copy end-------------------
endmodule
