`timescale 10ns / 1ps

module mystery(
    input a,
    
    input b,
    input c,

    output out
    );
    
    wire ANDtoInverter = b;
    wire OUTInverter;
    wire outAND1;
    wire outAND2;
    
    myInverter firstINVERTER(
      .A( ANDtoInverter ),
      .OUT( OUTInverter )
    );
    
    myAnd firstAND(
      .A ( a ),
      .B ( OUTInverter ),
      .OUT ( outAND1 )
    );
    
    myAnd secondAND(
      .A ( b ),
      .B ( c ),
      .OUT ( outAND2 )
    );
    
    myOr firstOR(
      .A( outAND1 ),
      .B( outAND2 ),
      .OUT ( out )
    );
    
    
 
endmodule
