`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2021 05:41:52 PM
// Design Name: 
// Module Name: mux3
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


module mux3(Y,A,B,C,D,s1,s2,s3);

input A,B,C,D;
input s1,s2,s3;
output reg Y;

always @(A,B,C,D,s1,s2,s3)

if (s3 == 1)
    Y = D;
else if (s2 == 1)
    Y = C;
else if (s1 == 1)
    Y = B;
else
    Y = A;
    
endmodule
