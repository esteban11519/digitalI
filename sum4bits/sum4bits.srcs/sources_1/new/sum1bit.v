`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 10:06:00 AM
// Design Name: 
// Module Name: sum1bit
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


module sum1bit(
    input in1,
    input in2,
    input inCout,
    output cout,
    output out
    );
 reg [1:0]auxOut;
 
 assign out=auxOut[0];
 assign cout=auxOut[1];
    
    always @(*) begin
    auxOut=in1+in2+inCout;
    end 
    
endmodule
