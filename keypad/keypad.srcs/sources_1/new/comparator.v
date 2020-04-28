`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2020 09:15:42 AM
// Design Name: 
// Module Name: comparator
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


module comparator(
    rows,
    cols,
    nums
    );
    
   
    input [3:0] rows;
    input [3:0] cols;
    output reg [15:0]nums;

    always @(*) begin
        if(rows==4'b1000 & cols==4'b1000) nums<=16'h1; 
        else if(rows==4'b1000 & cols==4'b0100) nums<=16'h2;
        else if(rows==4'b1000 & cols==4'b0010) nums<=16'h3;
        else if(rows==4'b1000 & cols==4'b0001) nums<=16'hA;
        else if(rows==4'b0100 & cols==4'b1000) nums<=16'h4;
        else if(rows==4'b0100 & cols==4'b0100) nums<=16'h5;
        else if(rows==4'b0100 & cols==4'b0010) nums<=16'h6;
        else if(rows==4'b0100 & cols==4'b0001) nums<=16'hB;
        else if(rows==4'b0010 & cols==4'b1000) nums<=16'h7;
        else if(rows==4'b0010 & cols==4'b0100) nums<=16'h8;
        else if(rows==4'b0010 & cols==4'b0010) nums<=16'h9;
        else if(rows==4'b0010 & cols==4'b0001) nums<=16'hC;
        else if(rows==4'b0001 & cols==4'b1000) nums<=16'hE;
        else if(rows==4'b0001 & cols==4'b0100) nums<=16'h0;
        else if(rows==4'b0001 & cols==4'b0010) nums<=16'hF;
        else if(rows==4'b0001 & cols==4'b0001) nums<=16'hD;
        else nums<=16'h0;
       end
    
  
    
endmodule
