`timescale 1ns / 1ps
/*****************************************************
byte_calculator.v

Description:
Verilog module for a byte calculator on BASYS 3 FPGA. It performs mathematical operations on two 8-bit values based on the selected operation. The result is stored in a 9-bit register.

Inputs:
- clk: Clock input
- byte_A: 8-bit operand A
- byte_B: 8-bit operand B
- op_select: 5-bit operation selection
Outputs:
- result: 9-bit result of the operation
*****************************************************/

module byte_calculator(
    input clk,
    input [7:0] byte_A,
    input [7:0] byte_B,
    input [4:0] op_select,
    output reg [8:0] result
    );
    
    
    always @(posedge clk or posedge reset) begin
        if(reset)
            result <= 8'b0000_0000;
        else
            case(op_select)
                5'b01000 : result <= byte_A + byte_B;
                5'b00100 : result <= byte_A - byte_B;
                5'b00010 : result <= byte_A * byte_B;
                5'b00001 : result <= byte_A / byte_B;
            endcase
    end
    
    
endmodule
