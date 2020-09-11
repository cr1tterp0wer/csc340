`timescale 1ns / 1ps

module replicator(
  input a,
  input b,
  input c, 
  input d,
  
  output out
);
    
    wire out2_1;
    wire out2_2;
    wire out2;
    
    wire out3_1;
    wire out3_2;
    wire out3_3;
    wire out3_4;
    wire out3;
    
    
    //OUT2
    myAnd ac(
      .A(a),
      .B(c),
      .OUT( out2_1 )
    );
    
    myAnd bd(
      .A(b),
      .B(d),
      .OUT( out2_2 )
    );
    
    myOr aORc(
      .A( out2_1 ),
      .B( out2_2 ),
      .OUT( out2 )
    );
    
    
    //OUT3
    myInverter NOTc(
      .A( c ),
      .OUT( out3_1 )
    );
    
    myInverter NOTb(
      .A( b ),
      .OUT( out3_2 )
    );
    
    myOr aORNOTc(
      .A( a ),
      .B( out3_1 ),
      .OUT( out3_3 )
    );
    
    myOr NOTbORd(
      .A( out3_2 ),
      .B( d ),
      .OUT( out3_4 )
    );
    
    myAnd output3(
      .A( out3_3 ),
      .B( out3_4 ),
      .OUT( out3 )
    );
    
    //OUT1
    myOr outOR(
      .A( out2 ),
      .B( out3 ),
      .OUT( out )
    );
    
endmodule
