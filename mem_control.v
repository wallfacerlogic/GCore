// Mem Control
#include "mem/mem.v"

module mem_control(write, read, clk, writedata, data, addr, rst)
    input [7:0] writedata;
    input [3:0] addr;
    input write, read, clk, rst;

    output [7:0] data;

//have some bugs
    mem mem
        (
            .dout(data), //output [7:0] dout
            .clk(clk), //input clk
            .oce(read), //input oce
            .ce(write), //input ce
            .reset(rst), //input reset
            .wre(1), //input wre
            //tag1
            .ad(addr), //input [2:0] ad 
            .din(writedata) //input [7:0] din
        );
endmodule
