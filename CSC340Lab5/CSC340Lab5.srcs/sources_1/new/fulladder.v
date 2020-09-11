`timescale 1ns / 1ps

module fulladder(
  input A, 
  input B,
  input CARRY_IN,
  
  output CARRY_OUT,
  output SUM
);


assign CARRY_OUT = ( A & B ) | ( CARRY_IN & B ) | ( CARRY_IN & A );
assign SUM = ( A ^ B ) ^ CARRY_IN;

endmodule
