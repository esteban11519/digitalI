`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 10:19:10 AM
// Design Name: 
// Module Name: sum4bits
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


module sum4bits(input [3:0]in1,in2, 
                        output [3:0]out, output cout);

wire cout1,cout2,cout3; 

sum1bit s0(.in1(in1[0]),.in2(in2[0]),.inCout(0),.out(out[0]),.cout(cout1));
sum1bit s1(.in1(in1[1]),.in2(in2[1]),.inCout(cout1),.out(out[1]),.cout(cout2));
sum1bit s2(.in1(in1[2]),.in2(in2[2]),.inCout(cout2),.out(out[2]),.cout(cout3));
sum1bit s3(.in1(in1[3]),.in2(in2[3]),.inCout(cout3),.out(out[3]),.cout(cout));
            
endmodule
