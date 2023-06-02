`timescale 1ns / 1ps
`include "ControlSignalDefine.v"

module IF_ID(
    input clock,
    input IF_Flush,
    input PCWrite,
    input [31:0] PC_IF,
    input [31:0] Instruction_IF,
    output reg[31:0] PC_ID,
    output reg[31:0] Instruction_ID
    );
    
    always @(posedge clock) begin
        if(IF_Flush) begin
            Instruction_ID <= `ZeroWord;
            PC_ID <= `ZeroWord;
        end else begin
            if(PCWrite) begin
                Instruction_ID <= Instruction_IF;
                PC_ID <= PC_IF;
            end
        end
    end
endmodule
