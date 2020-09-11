`timescale 1ns / 1ps

module myMysteryTEST;

  reg A,B,C;
  wire OUT;
  
  mystery myMystery(
    .a( A ),
    .b( B ),
    .c( C ),
    .out( OUT )
   );
   
   initial
   begin
     $monitor( A, B, C );
     A = 1'b0;
     B = 1'b0;
     C = 1'b0;
     
     #10
     A = 1'b1;
     B = 1'b0;
     C = 1'b0;
   
     #10
     A = 1'b0;
     B = 1'b1;
     C = 1'b0;
     
     #10
     A = 1'b0;
     B = 1'b0;
     C = 1'b1;
     
     #10
     A = 1'b1;
     B = 1'b1;
     C = 1'b0;
     
     #10
     A = 1'b1;
     B = 1'b0;
     C = 1'b1;
     
     #10
     A = 1'b0;
     B = 1'b1;
     C = 1'b1;
     
     #10
     A = 1'b1;
     B = 1'b1;
     C = 1'b1;
     
   end

endmodule
