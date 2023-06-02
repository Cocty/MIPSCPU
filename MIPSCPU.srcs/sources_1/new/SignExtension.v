`timescale 1ns / 1ps

module SignExtension(
    input[15:0] Imm16,
    input SignExtSignal,
    output[31:0] Imm32
    );
    
    assign Imm32 = (SignExtSignal) ? {{16{ Imm16[15] }},Imm16} : {16'd0,Imm16};
    
endmodule
