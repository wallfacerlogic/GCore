//Copyright (C)2014-2020 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.7Beta
//Part Number: GW1N-LV1QN48C6/I5
//Device: GW1N-1
//Created Time: Tue Jan 12 17:45:04 2021

module oprom (dout, clk, oce, ce, reset, ad);

output [7:0] dout;
input clk;
input oce;
input ce;
input reset;
input [2:0] ad;

wire gw_gnd;

assign gw_gnd = 1'b0;

pROM prom_inst_0 (
    .DO(dout[7:0]),
    .CLK(clk),
    .OCE(oce),
    .CE(ce),
    .RESET(reset),
    .AD({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,ad[2:0],gw_gnd,gw_gnd,gw_gnd})
);

defparam prom_inst_0.READ_MODE = 1'b0;
defparam prom_inst_0.BIT_WIDTH = 8;
defparam prom_inst_0.RESET_MODE = "SYNC";

endmodule //oprom
