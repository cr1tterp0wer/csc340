`timescale 1ns / 1ps

module adder8bit(
  input A_1,input A_2,input A_3,input A_4,input A_5,input A_6,input A_7,input A_8,
  input B_1,input B_2,input B_3,input B_4,input B_5,input B_6,input B_7,input B_8,
  input CIN_1,
  
  output SUM_1,output SUM_2,output SUM_3,output SUM_4,output SUM_5,output SUM_6,output SUM_7,output SUM_8
  );

  wire COUT_1;
  wire COUT_2;
  wire COUT_3;
  wire COUT_4;
  wire COUT_5;
  wire COUT_6;
  wire COUT_7;
  wire COUT_8;

  fulladder bit1(
	  .A(A_1),
	  .B(B_1),
	  .CARRY_IN(CIN_1),
	  .CARRY_OUT(COUT_1),
	  .SUM(SUM_1)
  );
  fulladder bit2(
	  .A(A_2),
	  .B(B_2),
	  .CARRY_IN(COUT_1),
	  .CARRY_OUT(COUT_2),
	  .SUM(SUM_2)
  );
  fulladder bit3(
	  .A(A_3),
	  .B(B_3),
	  .CARRY_IN(COUT_2),
	  .CARRY_OUT(COUT_3),
	  .SUM(SUM_3)
  );
  fulladder bit4(
	  .A(A_4),
	  .B(B_4),
	  .CARRY_IN(COUT_3),
	  .CARRY_OUT(COUT_4),
	  .SUM(SUM_4)  
  );
  fulladder bit5(
	  .A(A_5),
	  .B(B_5),
	  .CARRY_IN(COUT_4),
	  .CARRY_OUT(COUT_5),
	  .SUM(SUM_5)  
  );
  fulladder bit6(
	  .A(A_6),
	  .B(B_6),
	  .CARRY_IN(COUT_5),
	  .CARRY_OUT(COUT_6),
	  .SUM(SUM_6)  
  );
  fulladder bit7(
	  .A(A_7),
	  .B(B_7),
	  .CARRY_IN(COUT_6),
	  .CARRY_OUT(COUT_7),
	  .SUM(SUM_7)  
  );
  fulladder bit8(
	  .A(A_8),
	  .B(B_8),
	  .CARRY_IN(COUT_7),
	  .CARRY_OUT(COUT_8),
	  .SUM(SUM_8)  
  );
endmodule
