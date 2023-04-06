`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2021 04:52:27 PM
// Design Name: 
// Module Name: RCadder
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


module RCadder(sum,cout,a,b,c);
    input a, b, c;
    output sum, cout;
    
    assign sum = a ^ b ^ c;
    assign cout = (a & b) | (b & c) | (c & a);
    
endmodule
