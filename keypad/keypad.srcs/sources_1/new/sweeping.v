`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2020 09:00:35 AM
// Design Name: 
// Module Name: sweeping
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


module sweeping(
clk_1K,
rows);
    
input clk_1K;
output reg [3:0] rows;
   
reg [1:0]con;
   
always @(posedge clk_1K)
begin
    case(con)
    2'b00:rows<=4'b1000;
    2'b01:rows<=4'b0100;
    2'b10:rows<=4'b0010;
    2'b11:rows<=4'b0001;
    default: rows=4'b0000;
    endcase
    con=con+1;
end
 
    
endmodule
