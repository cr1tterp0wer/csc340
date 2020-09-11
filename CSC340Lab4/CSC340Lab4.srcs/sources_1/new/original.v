`timescale 1ns / 1ps
module original(
  input A,
  input B, 
  input C,
  input D,
  
  output F,
  output d
);
  wire zero;
  wire three;
  wire four;
  wire five;
  wire six;
  wire seven;
  wire eleven;
  wire thirteen;
  wire fourteen;
  wire fifteen;

    //We need 10 AND gates(0,3,4,5,6,7,11,13,14,15)
    //We need 10 OR gates(0,3,4,5,6,7,11,13,14,15)
    //We need 2 outputs ( F, d )
     
    assign zero  = ~A & ~B & ~C & ~D;
    assign three = ~A & ~B & C & D;
    assign four  = ~A & B & ~C & ~D;
    assign five  = ~A & B & ~C & D;
    assign six   = ~A & B & C & ~D;
    assign seven = ~A & B & C & D;
    
    assign eleven   = A & ~B & C & D;
    assign thirteen = A & B & ~C & D;
    assign fourteen = A & B & C & ~D;
    assign fifteen  = A & B & C & D;
    
    or( F, zero, three, five, seven, eleven, thirteen );
    or( d, four, six, fourteen, fifteen );
    
    
endmodule
