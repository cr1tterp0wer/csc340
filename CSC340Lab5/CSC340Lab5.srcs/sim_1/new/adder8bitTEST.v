`timescale 1ns / 1ps

module adder8bitTEST;
reg A_1;reg A_2;reg A_3;reg A_4;reg A_5;reg A_6;reg A_7;reg A_8;
reg B_1;reg B_2;reg B_3;reg B_4;reg B_5;reg B_6;reg B_7;reg B_8;
reg CIN_1;
wire SUM_1;wire SUM_2;wire SUM_3;wire SUM_4;wire SUM_5;wire SUM_6;wire SUM_7;wire SUM_8;

  adder8bit my8bitAdder(.A_1(A_1),.A_2(A_2),.A_3(A_3),.A_4(A_4),.A_5(A_5),.A_6(A_6),.A_7(A_7),.A_8(A_8),.B_1(B_1),.B_2(B_2),.B_3(B_3),.B_4(B_4),.B_5(B_5),.B_6(B_6),.B_7(B_7),.B_8(B_8),.CIN_1(CIN_1),.SUM_1(SUM_1),.SUM_2(SUM_2),.SUM_3(SUM_3),.SUM_4(SUM_4),.SUM_5(SUM_5),.SUM_6(SUM_6),.SUM_7(SUM_7),.SUM_8(SUM_8)
  );

  initial

  
  begin
  $monitor(A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,SUM_1,SUM_2,SUM_3,SUM_4,SUM_5,SUM_6,SUM_7,SUM_8
  );

  CIN_1 = 1'b0;
  // one
  A_1  = 1'b0;
  A_2  = 1'b0;
  A_3  = 1'b0;
  A_4  = 1'b0;
  A_5  = 1'b0;
  A_6  = 1'b0;
  A_7  = 1'b0;
  A_8  = 1'b0;

  B_1  = 1'b0;
  B_2  = 1'b0;
  B_3  = 1'b0;
  B_4  = 1'b0;
  B_5  = 1'b0;
  B_6  = 1'b0;
  B_7  = 1'b0;
  B_8  = 1'b0;
  #10
  
  // two
  A_1  = 1'b1;
  A_2  = 1'b0;
  A_3  = 1'b0;
  A_4  = 1'b0;
  A_5  = 1'b0;
  A_6  = 1'b0;
  A_7  = 1'b0;
  A_8  = 1'b0;

  B_1  = 1'b0;
  B_2  = 1'b0;
  B_3  = 1'b0;
  B_4  = 1'b0;
  B_5  = 1'b0;
  B_6  = 1'b0;
  B_7  = 1'b0;
  B_8  = 1'b0;
  #10
  
  // three
  A_1  = 1'b1;
  A_2  = 1'b0;
  A_3  = 1'b0;
  A_4  = 1'b0;
  A_5  = 1'b0;
  A_6  = 1'b0;
  A_7  = 1'b0;
  A_8  = 1'b0;

  B_1  = 1'b1;
  B_2  = 1'b0;
  B_3  = 1'b0;
  B_4  = 1'b0;
  B_5  = 1'b0;
  B_6  = 1'b0;
  B_7  = 1'b0;
  B_8  = 1'b0;
  #10
  
  // four
  A_1  = 1'b1;
  A_2  = 1'b1;
  A_3  = 1'b1;
  A_4  = 1'b1;
  A_5  = 1'b1;
  A_6  = 1'b1;
  A_7  = 1'b1;
  A_8  = 1'b1;

  B_1  = 1'b1;
  B_2  = 1'b0;
  B_3  = 1'b0;
  B_4  = 1'b0;
  B_5  = 1'b0;
  B_6  = 1'b0;
  B_7  = 1'b0;
  B_8  = 1'b0;
  #10
  
  // five
  A_1  = 1'b0;
  A_2  = 1'b0;
  A_3  = 1'b0;
  A_4  = 1'b0;
  A_5  = 1'b0;
  A_6  = 1'b0;
  A_7  = 1'b0;
  A_8  = 1'b1;
  
  B_1  = 1'b0;
  B_2  = 1'b0;
  B_3  = 1'b0;
  B_4  = 1'b0;
  B_5  = 1'b0;
  B_6  = 1'b0;
  B_7  = 1'b0;
  B_8  = 1'b1;
  #10
  
  A_1  = 1'b1;
  A_2  = 1'b0;
  A_3  = 1'b0;
  A_4  = 1'b0;
  A_5  = 1'b0;
  A_6  = 1'b0;
  A_7  = 1'b0;
  A_8  = 1'b0;
  
  B_1  = 1'b1;
  B_2  = 1'b0;
  B_3  = 1'b0;
  B_4  = 1'b0;
  B_5  = 1'b0;
  B_6  = 1'b0;
  B_7  = 1'b0;
  B_8  = 1'b0;
    #10
  
  A_1  = 1'b1;
  A_2  = 1'b1;
  A_3  = 1'b0;
  A_4  = 1'b0;
  A_5  = 1'b0;
  A_6  = 1'b0;
  A_7  = 1'b0;
  A_8  = 1'b1;
  
  B_1  = 1'b1;
  B_2  = 1'b1;
  B_3  = 1'b0;
  B_4  = 1'b0;
  B_5  = 1'b0;
  B_6  = 1'b0;
  B_7  = 1'b0;
  B_8  = 1'b0;
end


endmodule
