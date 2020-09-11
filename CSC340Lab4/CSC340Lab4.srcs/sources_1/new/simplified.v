`timescale 1ns / 1ps
module simplified(
  input A,
  input B, 
  input C,
  input D,
  
  output F,
  output d
 );
 
 wire F_1;
 wire F_2;
 wire F_3;
 wire F_4;
 
 wire d_1;
 wire d_2;
 
 assign F_1 = ~A & ~B & ~C & ~D;
 assign F_2 = B & ~C & D;
 assign F_3 = ~A & C & D;
 assign F_4 = ~B & C & D;
 
 assign d_1 = ~A & B & D;
 assign d_2 = A & B & C;
    
 or( F, F_1, F_2, F_3, F_4 );
 or( d, d_1, d_2 );
 
endmodule
