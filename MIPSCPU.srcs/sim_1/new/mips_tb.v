`timescale 1ns / 1ps

module mips_tb(

    );
    
    reg clk,rstn;
    wire [15:0] out;
    
    MIPS_CPU MIPS_CPU(.clock(clk),.rstn(rstn),.led(out));
   
    initial begin
      clk = 0;
      rstn = 0;
//     $readmemh( "D:/MIPSCPU/testbench/test_jump.dat" , MIPS_CPU.IM.InstMem); // load instructions into instruction memory
      $monitor("PC = 0x%8X, instr = 0x%8X", MIPS_CPU.PC, MIPS_CPU.CPU.Instruction_ID); // used for debug
      #50
      clk = ~clk;
      #50
      rstn = 1;
    forever #50  
    begin
      clk = ~clk;
    end
  end
	   

endmodule
