`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2020 09:34:08 AM
// Design Name: 
// Module Name: KeyPad
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


module KeyPad(
    clk,
    cols,
    sevSeg,
    an,
    rows
    );
    
    input clk;
    input [3:0] cols;
    input [3:0] rows;
    output [6:0] sevSeg;
    output reg [3:0] an;
    
    
    wire clk_1K;
    wire [3:0]rows;
    wire [15:0] nums;
    wire [3:0]BCD;
    wire divFre;
 
    
    mfreDiv FreDiv(
    .clk(clk),
    .freDiv(clk_1K));
    
    
    sweeping Sweeping(
    .clk_1K(clk_1K),
    .rows(rows));
        
    comparator Comparator(
    .rows(rows),
    .cols(cols),
    .nums(nums)
    );
    
    selDat SelDat(
    .clk(clk),
    .BCD4(nums),
    .BCDtoSevSeg(sevSeg),
    .BCD(BCD),
    .selAn(an),
    .divFre(divFre)
    );
        
    
    
endmodule
