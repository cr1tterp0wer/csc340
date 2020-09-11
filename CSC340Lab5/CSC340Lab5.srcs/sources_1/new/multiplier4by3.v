`timescale 1ns / 1ps
module multiplier4by3(
    input A_0,
    input A_1,
    input A_2,
    input A_3,
    
    input B_0,
    input B_1,
    input B_2, 
    
    input CIN_0,
    
    output SUM_0, output SUM_1,output SUM_2,output SUM_3,output SUM_4,output SUM_5,output SUM_6
    );
    
    wire a1_fa1;wire a2_fa2;wire a3_fa3;
    wire a0_fa1;wire a1_fa2;wire a2_fa3;wire a3_fa4;
    wire a0_fa5;wire a1_fa6;wire a2_fa7;wire a3_fa8;
    

    wire fa2_co;wire fa3_co;wire fa4_co;wire fa5_co;wire fa6_co;wire fa7_co;wire fa8_co;
    wire fa2_s;wire fa3_s;wire fa4_s;wire fa5_s;wire fa6_s;wire fa7_s;wire fa8_s;
    
    myAnd AND_1( .A(A_0), .B(B_0), .OUT(SUM_0) ); //first out
    
    myAnd AND_2( .A(A_1), .B(B_0), .OUT(a1_fa1) );
    myAnd AND_3( .A(A_2), .B(B_0), .OUT(a2_fa2) );
    myAnd AND_4( .A(A_3), .B(B_0), .OUT(a3_fa3) );
    
    myAnd AND_5( .A(A_0), .B(B_1), .OUT(a0_fa1) );
    myAnd AND_6( .A(A_1), .B(B_1), .OUT(a1_fa2) );
    myAnd AND_7( .A(A_2), .B(B_1), .OUT(a2_fa3) );
    myAnd AND_8( .A(A_3), .B(B_1), .OUT(a3_fa4) );
    
    myAnd AND_9( .A(A_0), .B(B_2), .OUT(a0_fa5) );
    myAnd AND_10( .A(A_1), .B(B_2), .OUT(a1_fa6) );
    myAnd AND_11( .A(A_2), .B(B_2), .OUT(a2_fa7) );
    myAnd AND_12( .A(A_3), .B(B_2), .OUT(a3_fa8) );
    
    halfadder FA1(.A(a0_fa1),.B(a1_fa1),.CARRY_OUT(fa1_co),.SUM(SUM_1)); //second out
    fulladder FA2(.A(a1_fa2),.B(a2_fa2),.CARRY_IN(fa1_co),.CARRY_OUT(fa2_co),.SUM(fa2_s));
    fulladder FA3(.A(a3_fa3),.B(a2_fa3),.CARRY_IN(fa2_co),.CARRY_OUT(fa3_co),.SUM(fa3_s));
    fulladder FA4(.A(a3_fa4),.B(),.CARRY_IN(fa3_co),.CARRY_OUT(fa4_co),.SUM(fa4_s));
    
    halfadder FA5(.A(a0_fa5),.B(fa2_s),.CARRY_OUT(fa5_co),.SUM(SUM_2));
    fulladder FA6(.A(a1_fa6),.B(fa3_s),.CARRY_IN(fa5_co),.CARRY_OUT(fa6_co),.SUM(SUM_3));
    fulladder FA7(.A(a2_fa7),.B(fa4_s),.CARRY_IN(fa6_co),.CARRY_OUT(fa7_co),.SUM(SUM_4));
    fulladder FA8(.A(a3_fa8),.B(fa4_co),.CARRY_IN(fa7_co),.CARRY_OUT(SUM_6),.SUM(SUM_5));
    
endmodule
