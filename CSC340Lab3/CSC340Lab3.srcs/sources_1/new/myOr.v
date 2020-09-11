`timescale 10ns / 1ps


module myOr(
    input A,
    input B,
    output OUT
    );
    
    or orOUT( OUT, A, B );
    
endmodule
