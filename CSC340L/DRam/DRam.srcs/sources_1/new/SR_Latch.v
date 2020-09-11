`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Christopher Apodaca
// 
// Create Date: 03/22/2020 09:10:01 PM
// Design Name: 
// Module Name: SR_Latch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR_Latch(
    input S,
    input R,
    
    output Q, 
    output NOT_Q
    );
    
    nor topNOR( Q, R, NOT_Q );
    nor bottomNOR( NOT_Q, S, Q);
    
endmodule



















