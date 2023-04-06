`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2021 04:38:51 PM
// Design Name: 
// Module Name: ALU
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


module ALU(input [31:0]a,b,input [2:0]ControlALU ,output reg [31:0]yout,output reg zero);
    
    wire [31:0]yor;
    wire [31:0]yxor;
    wire [31:0]yand;
    wire [31:0]ycomp;
    wire [31:0]ysum;
    wire [31:0]ysus;
    wire [31:0]y;
    
    ALUor ALUOr(.a(a),.b(b),.y(yor));
    ALUAND ALUand(.a(a),.b(b),.y(yand));
    ALUXOR ALUxor(.a(a),.b(b),.y(yxor));
    ALUsum ALUSum(.a(a),.b(b),.y(ysum));
    ALUsus ALUSus(.a(a),.b(b),.y(ysus));
    ALUComp ALUcomp(.a(a),.b(b),.y(ycomp));
    
    always @(*)
    begin
        
        case (ControlALU)
            3'b000:yout<=yand;
            3'b001:yout<=yor;
            3'b010:yout<=ysum;
            3'b100:yout<=yxor;
            3'b110:yout<=ysus;
            3'b111:yout<=ycomp;
            default:yout<=3'bxxx;
        endcase
       
        if(yout=='d0) begin 
            zero=1'b1;
        end
        else begin 
            zero=1'b0;
        end
    end


endmodule
