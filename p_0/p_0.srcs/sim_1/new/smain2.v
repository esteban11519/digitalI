`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2020 06:46:54 AM
// Design Name: 
// Module Name: smain2
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


module smain2;

reg [1:0] a ;
reg [1:0] y ;

main2 A(a,y);

initial begin
a[0]=0;a[1]=0; #30;
a[0]=0;a[1]=1; #30;
a[0]=1;a[1]=0; #30;
a[0]=1;a[1]=1; #30;
end
endmodule
