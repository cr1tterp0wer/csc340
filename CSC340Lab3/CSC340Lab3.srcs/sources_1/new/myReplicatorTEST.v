`timescale 1ns / 1ps

module myReplicatorTEST;


  reg A,B,C,D;
  wire OUT;
  
  replicator myReplicator(
    .a( A ),
    .b( B ),
    .c( C ),
    .d( D ),
    .out( OUT )
   );
   
   initial
   begin
     $monitor( A, B, C, D );
     A = 1'b0;
     B = 1'b0;
     C = 1'b0;
     D = 1'b0;
     
     #10
     A = 1'b0;
     B = 1'b0;
     C = 1'b0;
     D = 1'b1; 
    
     #10
     A = 1'b0;
     B = 1'b0;
     C = 1'b1;
     D = 1'b0;
     
     #10
     A = 1'b0;
     B = 1'b0;
     C = 1'b1;
     D = 1'b1;
     
     #10
     A = 1'b0;
     B = 1'b1;
     C = 1'b0;
     D = 1'b0;
     
     #10
     A = 1'b0;
     B = 1'b1;
     C = 1'b0;
     D = 1'b1;
     
     #10
     A = 1'b0;
     B = 1'b1;
     C = 1'b1;
     D = 1'b1;
     
     #10
     A = 1'b1;
     B = 1'b0;
     C = 1'b0;
     D = 1'b0;
     
     #10
     A = 1'b1;
     B = 1'b0;
     C = 1'b0;
     D = 1'b1;
     
     #10
     A = 1'b1;
     B = 1'b0;
     C = 1'b1;
     D = 1'b0;
     
     #10
     A = 1'b1;
     B = 1'b0;
     C = 1'b1;
     D = 1'b1;
     
     #10
     A = 1'b1;
     B = 1'b1;
     C = 1'b0;
     D = 1'b0;
     
     #10
     A = 1'b1;
     B = 1'b1;
     C = 1'b0;
     D = 1'b1;
     
     #10
     A = 1'b1;
     B = 1'b1;
     C = 1'b1;
     D = 1'b0;
     
     #10
     A = 1'b1;
     B = 1'b1;
     C = 1'b1;
     D = 1'b1;
     
   end



endmodule
