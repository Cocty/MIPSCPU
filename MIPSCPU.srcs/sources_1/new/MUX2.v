`timescale 1ns / 1ps

module MUX2 #(parameter bits = 4)(
    input [bits-1:0] DataIn0,
    input [bits-1:0] DataIn1,
    input Signal,
    output [bits-1:0] DataOut
    );
    
    assign DataOut = (Signal == 1'b0) ? DataIn0 : DataIn1;
    
endmodule
