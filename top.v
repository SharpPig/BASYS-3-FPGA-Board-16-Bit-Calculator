`timescale 1ns / 1ps
/*****************************************************
top.v

Description:
Top-level Verilog module for integrating the Byte Calculator, button debouncers, and other components on the BASYS 3 FPGA board.

Inputs:
- clk_100MHz: 100MHz clock input
- btn: 5-bit button input
- sw: 16-bit switch input
Outputs:
- LED: 9-bit output displayed on LEDs
*****************************************************/


module top(
    // All inputs and outputs on BASYS 3 board
    input clk_100MHz,       
    input [4:0] btn,        
    input [15:0] sw,
    output [8:0] LED
    );
    
    wire reset, add, sub, mult, div;
    wire [4:0] op_select;
    assign op_select = {reset, add, sub, mult, div};
    
    byte_calculator bc(.clk(clk_100MHz), .byte_A(sw[7:0]), .byte_B(sw[15:8]), .op_select(op_select), .result(LED));
    btn_debouncer bdr(.clk_in(clk_100MHz), .btn_in(btn[4]), .btn_out(reset));
    btn_debouncer bda(.clk_in(clk_100MHz), .btn_in(btn[3]), .btn_out(add));
    btn_debouncer bds(.clk_in(clk_100MHz), .btn_in(btn[2]), .btn_out(sub));
    btn_debouncer bdm(.clk_in(clk_100MHz), .btn_in(btn[1]), .btn_out(mult));
    btn_debouncer bdd(.clk_in(clk_100MHz), .btn_in(btn[0]), .btn_out(div));
    
    
    
endmodule
