`timescale 1ns / 1ps

module fulladderTEST;
  
  reg A, B, CARRY_IN;
  wire CARRY_OUT, SUM;

  fulladder myAdder(
    .A(A),
    .B(B),
    .CARRY_IN(CARRY_IN),
    .CARRY_OUT(CARRY_OUT),
    .SUM(SUM)
  );

initial
begin
$monitor(A, B, CARRY_IN, CARRY_OUT, SUM);
  
  A = 1'b0;
  B = 1'b0;
  CARRY_IN  = 1'b0;
  
  #10
  A = 1'b0;
  B = 1'b0;
  CARRY_IN  = 1'b1;
  
  #10
  A = 1'b0;
  B = 1'b1;
  CARRY_IN  = 1'b0;
  
  #10
  A = 1'b0;
  B = 1'b1;
  CARRY_IN  = 1'b1;
  
  #10
  A = 1'b1;
  B = 1'b0;
  CARRY_IN  = 1'b0;
  
  #10
  A = 1'b1;
  B = 1'b0;
  CARRY_IN  = 1'b1;
  
  #10
  A = 1'b1;
  B = 1'b1;
  CARRY_IN  = 1'b0;
  
  #10
  A = 1'b1;
  B = 1'b1;
  CARRY_IN  = 1'b1;
  
end

endmodule
