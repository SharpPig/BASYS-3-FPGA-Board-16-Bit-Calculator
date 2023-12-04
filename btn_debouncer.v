`timescale 1ns / 1ps
/*****************************************************
btn_debouncer.v

Description:
Verilog module for debouncing a button input. It uses flip-flops to stabilize the button input signal and provides a debounced output.

Inputs:
- clk_in: Clock input
- btn_in: Raw button input
Outputs:
- btn_out: Debounced button output
*****************************************************/

module btn_debouncer(
    input clk_in,
    input btn_in,
    output btn_out
    );
    
    reg t0, t1, t2;
    
    always @(posedge clk_in) begin
        t0 <= btn_in;
        t1 <= t0;
        t2 <= t1;
    end
    
    assign btn_out = t2;
    
endmodule
