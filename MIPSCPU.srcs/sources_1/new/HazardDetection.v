`timescale 1ns / 1ps

module HazardDetection( //解决load-use数据冒险
    input [4:0] RegSource_ID,
    input [4:0] RegTarget_ID,
    input [4:0] WriteRegAddr_EX,
    input [2:0] MemRead_EX,
    output reg PCWrite,
    output reg stall
    );
    
    //当 EX 阶段的指令是 load 指令，并且 load 的数据存
//放将要存放的寄存器与 ID 阶段指令要访问的寄存器相同
    always @(*) begin
        if((MemRead_EX != 3'b000) && ((WriteRegAddr_EX == RegSource_ID) || (WriteRegAddr_EX == RegTarget_ID))) begin 
            stall = 1; //暂停一个周期
            PCWrite = 0; //PC停止取指
        end else begin
            stall = 0;
            PCWrite = 1;
        end
    end
            
    
endmodule
