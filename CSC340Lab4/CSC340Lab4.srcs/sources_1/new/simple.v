`timescale 1ns / 1ps
module simple;
reg A, B, C, D;
wire F, d;

simplified mySimple( 
  .A( A ),
  .B( B ),
  .C( C ),
  .D( D ),
  .F( F ),
  .d( d )
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
     D = 1'b0;
     
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
