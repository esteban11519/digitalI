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

// The frequency in the sweeping should be 4 times more fast that the way in that change
// the variable an.

module keypad(
    clk,
    cols,
    sevSeg,
    an,
    rows,
    nums
    );
    
    input clk;
    input [3:0] cols;
    output [6:0] sevSeg;
    output [3:0] an;
    output [3:0] rows;
    output [15:0] nums;
    
    
    wire clk_1K;
  
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
