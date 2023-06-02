`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/29 20:42:38
// Design Name: 
// Module Name: SHOW_ON_LED
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SHOW_ON_LED(
    input clk,
    input [31:0] alu_r,
    output reg[15:0] led
    );
    always@(posedge clk)
	       led<=alu_r[15:0];
endmodule
