`timescale 10ns / 1ps


module myAnd(
    input A,
    input B,
    output OUT
    );
    
    and andOUT( OUT, A, B );
    
endmodule
