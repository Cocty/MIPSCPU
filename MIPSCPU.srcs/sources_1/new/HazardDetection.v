`timescale 1ns / 1ps

module HazardDetection( //���load-use����ð��
    input [4:0] RegSource_ID,
    input [4:0] RegTarget_ID,
    input [4:0] WriteRegAddr_EX,
    input [2:0] MemRead_EX,
    output reg PCWrite,
    output reg stall
    );
    
    //�� EX �׶ε�ָ���� load ָ����� load �����ݴ�
//�Ž�Ҫ��ŵļĴ����� ID �׶�ָ��Ҫ���ʵļĴ�����ͬ
    always @(*) begin
        if((MemRead_EX != 3'b000) && ((WriteRegAddr_EX == RegSource_ID) || (WriteRegAddr_EX == RegTarget_ID))) begin 
            stall = 1; //��ͣһ������
            PCWrite = 0; //PCֹͣȡָ
        end else begin
            stall = 0;
            PCWrite = 1;
        end
    end
            
    
endmodule
