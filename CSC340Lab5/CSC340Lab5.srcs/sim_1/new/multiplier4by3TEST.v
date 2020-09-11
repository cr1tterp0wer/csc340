`timescale 1ns / 1ps


module multiplier4by3TEST;
    reg A_0;reg A_1;reg A_2;reg A_3;
    reg B_0; reg B_1;reg B_2; 
    reg CIN_0;
    wire SUM_0; wire SUM_1; wire SUM_2; wire SUM_3; wire SUM_4; wire SUM_5; wire SUM_6;

multiplier4by3 mult(
    .A_0(A_0),
    .A_1(A_1),
    .A_2(A_2),
    .A_3(A_3),
    
    .B_0(B_0),
    .B_1(B_1),
    .B_2(B_2), 
    
    .CIN_0(CIN_0),
    
    .SUM_0( SUM_0), .SUM_1(SUM_1), .SUM_2(SUM_2),.SUM_3(SUM_3),.SUM_4(SUM_4),.SUM_5(SUM_5),.SUM_6(SUM_6)
    );
    
 initial
    begin
    $monitor( A_0,A_1,A_3,B_0, B_1, B_2,SUM_0,SUM_1,SUM_2,SUM_3,SUM_4, SUM_5, SUM_6,CIN_0 );
    CIN_0  = 1'b0;
    
    
    //5x3
     A_0  = 1'b1;
     A_1  = 1'b0;
     A_2  = 1'b1;
     A_3  = 1'b0;
     
     B_0  = 1'b1;
     B_1  = 1'b1;
     B_2  = 1'b0;
     
      #100
    //15x5
     A_0  = 1'b1;
     A_1  = 1'b1;
     A_2  = 1'b1;
     A_3  = 1'b1;
     
     B_0  = 1'b1;
     B_1  = 1'b0;
     B_2  = 1'b1;
     #100
    
    //9x7
     A_0  = 1'b1;
     A_1  = 1'b0;
     A_2  = 1'b1;
     A_3  = 1'b0;
     
     B_0  = 1'b1;
     B_1  = 1'b1;
     B_2  = 1'b1;
     
end



endmodule
