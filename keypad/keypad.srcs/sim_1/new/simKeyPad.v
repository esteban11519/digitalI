`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2020 05:01:45 PM
// Design Name: 
// Module Name: simKeyPad
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


module simKeyPad;

keypad Keypad(
    .clk(clk),
    .cols(cols),
    .sevSeg(sevSeg),
    .an(an),
    .rows(rows),
    .nums(a)
    );
    
reg clk;
reg [3:0]cols;
wire [6:0]sevSeg;
wire [3:0]an;
wire [3:0]rows;
wire [15:0] a;

reg [1:0]con;

initial begin
cols=4'b1000;    
    for(con=0;con<4;con=con+1)
    begin
    clk=con[0];
    #1 $display("el reloj %d ",clk);
    end

end

initial begin:TEST_CASE
$dumpfile("simKeyPad.v");
#(60) $finish;
end

endmodule
