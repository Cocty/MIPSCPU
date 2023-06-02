`timescale 1ns / 1ps

module AluSrcA(
    input [31:0] ForwardAData,
    input [31:0] Shamt_EX,
    input [31:0] PC_EX,
    input [2:0] JumpSignal,
    input AluSrcASignal,
    output reg[31:0] AluSrcAData    
    );
    
    always @(*) begin
        if(JumpSignal == 3'b101 || JumpSignal == 3'b100 || JumpSignal == 3'b111) AluSrcAData = PC_EX;
        else begin
            if(AluSrcASignal)
                AluSrcAData = Shamt_EX;
            else AluSrcAData = ForwardAData;
        end
    end
    
endmodule
