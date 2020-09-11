`timescale 1ns / 1ps
module mux4to1( 
  input S_0,
  input S_1,
   
  input I_0,
  input I_1,
  input I_2,
  input I_3,
  
  output OUT
  );
  
  reg out;
  

  always @( S_0 or S_1 )
  begin
    out = ( S_0 & S_1 & I_3 ) | (S_1 & ~S_0 & I_2 ) | (~S_1 & S_0 & I_1) | (~S_1 & ~S_0 & I_0);
  end
  
  assign OUT = out;
endmodule
