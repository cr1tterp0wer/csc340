`timescale 1ns / 1ps

module test_mux;
  reg S_0, S_1, I_0, I_1, I_2, I_3;
  
  wire OUT;
    
    mux4to1 myMux(
      .S_0( S_0 ),
      .S_1( S_1),
       
      .I_0( I_0 ),
      .I_1( I_1 ),
      .I_2( I_2 ),
      .I_3( I_3 ),
      
      .OUT( OUT )
    );
    initial
    begin
    $monitor( S_0, S_1, OUT );
    
     S_1 = 1'b0;
     S_0 = 1'b0;
     
     I_0 = 1'b1;
     I_1 = 1'b1;
     I_2 = 1'b1;
     I_3 = 1'b1;
     
     #10
     S_1 = 1'b0;
     S_0 = 1'b1;
     
     I_0 = 1'b1;
     I_1 = 1'b1;
     I_2 = 1'b1;
     I_3 = 1'b1;
     
     #10
     S_1 = 1'b1;
     S_0 = 1'b0;
     
     I_0 = 1'b1;
     I_1 = 1'b1;
     I_2 = 1'b1;
     I_3 = 1'b1;
          
     #10
     S_1 = 1'b1;
     S_0 = 1'b1;
     
     I_0 = 1'b1;
     I_1 = 1'b1;
     I_2 = 1'b1;
     I_3 = 1'b1;
    end
    
endmodule
