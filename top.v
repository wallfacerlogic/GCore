// CPU Top

#include "accum.v"
#include "alu.v"
#include "clock.v"
#include "imm_builder.v"
#include "mem_control.v"
#include "mux.v"
#include "opam_control.v"
#include "pc.v"
#include "sll_builder.v"

// Control
input clk;
input rst;

// Set OP
input write;
input [7:0] writeop;
input [7:0] addr; 

// Out
output [7:0] acc_out;


