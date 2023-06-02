`timescale 1ns / 1ps

module InstructionMemory(
    input [8:2] InstAddr,
    output [31:0] Instruction
    );
    
    reg [31:0] InstMem[127:0];    
    initial begin
        InstMem[0]=32'h3c090000;        
        InstMem[1]=32'h3c0a2100;        
        InstMem[2]=32'h200b0001;        
        InstMem[3]=32'h200c0005;        
        InstMem[4]=32'h354d2100;        
        InstMem[5]=32'h314e0100;        
        InstMem[6]=32'h200fffff;        
        InstMem[7]=32'h25e90002;        
        InstMem[8]=32'h01ec5821;        
        InstMem[9]=32'h01e36820;
        InstMem[10]=32'h01ab7024;
        InstMem[11]=32'h012b5023;
        InstMem[12]=32'h012b5022;
        InstMem[13]=32'h014d4825;
        InstMem[14]=32'h016c782a;
        InstMem[15]=32'h018b782b;
        InstMem[16]=32'h014f5827;
        InstMem[17]=32'h01496826;
        InstMem[18]=32'h000d6280;
        InstMem[19]=32'h000c5a42;
        InstMem[20]=32'h000a7843;
        InstMem[21]=32'h016a6007;
        InstMem[22]=32'h3c09ffff;
        InstMem[23]=32'h012c7826;
        InstMem[24]=32'h01696007;
        InstMem[25]=32'h01696806;
        InstMem[26]=32'h01696804;
        InstMem[27]=32'h3c0a1001;
        InstMem[28]=32'had4b0000;
        InstMem[29]=32'h8d4c0000;
        InstMem[30]=32'h218c0001;
        InstMem[31]=32'h298b0006;
        InstMem[32]=32'h116b0001;
        InstMem[33]=32'h214903e8;
        InstMem[34]=32'h20090064;
        InstMem[35]=32'ha1490008;
        InstMem[36]=32'h814b0008;
        InstMem[37]=32'h15600001;
        InstMem[38]=32'h214903e8;
        InstMem[39]=32'h200cff9c;
        InstMem[40]=32'ha54c000c;
        InstMem[41]=32'had4c0004;
        InstMem[42]=32'h854b0004;
        InstMem[43]=32'h954d0004;
        InstMem[44]=32'h914c0004;
    end  
    assign Instruction = InstMem[InstAddr];
    
endmodule
