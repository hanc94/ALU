`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2021 05:14:03 PM
// Design Name: 
// Module Name: mux
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


module mux( out, in1, in2, sel);

    input [31:0]in1,in2;
    input sel;
    output reg [31:0]out;
    always @(in1, in2, sel)
    begin
    if(sel == 0)
        out =in1;
    else
        out = in2;
    end
    
endmodule
