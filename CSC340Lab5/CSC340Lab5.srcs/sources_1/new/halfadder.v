`timescale 1ns / 1ps

module halfadder(
  input A, 
  input B,
  
  output CARRY_OUT,
  output SUM
);


assign CARRY_OUT = ( A & B );
assign SUM = ( A ^ B );

endmodule
