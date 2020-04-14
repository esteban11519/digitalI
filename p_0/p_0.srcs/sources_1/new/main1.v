`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 05:41:56 AM
// Design Name: 
// Module Name: main1
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


module main1(input a,b,c, output y);
    
assign y=~a&~b&~c| a&~b&~c| a&~b&c;
 
endmodule
