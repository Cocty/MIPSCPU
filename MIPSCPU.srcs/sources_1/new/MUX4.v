`timescale 1ns / 1ps



module MUX4 #(parameter bits = 4)(
    input [bits-1:0] DataIn0,
    input [bits-1:0] DataIn1,
    input [bits-1:0] DataIn2,
    input [bits-1:0] DataIn3,
    input [1:0] Signal,
    output reg[bits-1:0] DataOut
    );
    
    always @(*) begin
        case (Signal)
            2'b00: DataOut = DataIn0;
            2'b01: DataOut = DataIn1;
            2'b10: DataOut = DataIn2;
            2'b11: DataOut = DataIn3;
            default: ;
        endcase
    end
    
endmodule
