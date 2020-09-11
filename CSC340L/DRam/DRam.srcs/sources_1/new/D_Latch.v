`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2020 09:22:47 PM
// Design Name: 
// Module Name: D_Latch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module D_Latch(
    input D,
    input ENABLE,
    
    output Q,
    output NOT_Q
    );
    
    wire not_d;
    
    SR_Latch srLatch(
      .S(D & ENABLE),
      .R(^D & ENABLE),
      .Q(Q),
      .NOT_Q(NOT_Q)
    );
    
endmodule
