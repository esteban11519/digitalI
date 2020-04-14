`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 05:47:14 AM
// Design Name: 
// Module Name: smain1
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


module smain1;

reg a;
reg b;
reg c;

main1  A(a,b,c,y);

initial begin
a=0;b=0;c=0; #30;
a=0;b=0;c=1; #30;
a=0;b=1;c=0; #30;
a=0;b=1;c=1; #30;
a=1;b=0;c=0; #30;
a=1;b=0;c=1; #30;
a=1;b=1;c=0; #30;
a=1;b=1;c=1; #30;
end

initial begin: TEST_CASE
     $dumpfile("smain1.vcd");
     #(250) $finish;
   end

endmodule
