`timescale 10ns / 1ps


module myInverter(
    input A,
    input OUT
    );
    
    not notOUT( OUT, A );
    
endmodule
