`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2021 07:00:05 PM
// Design Name: 
// Module Name: mux4
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


module mux4(s,Y,A,B,C,D);

    input A,B,C,D;
    input [1:0]s;
    output reg Y;
    always @(A,B,C,D,s)
    case (s)
        2'b00 : Y = A;
        2'b01 : Y = B;
        2'b10 : Y = C;
        2'b11 : Y = D;
    endcase
        
    
endmodule
