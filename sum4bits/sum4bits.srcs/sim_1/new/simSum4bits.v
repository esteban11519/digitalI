`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2020 10:43:53 AM
// Design Name: 
// Module Name: simSum4bits
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


module simSum4bits(
    );
reg [3:0]in1;
reg [3:0]in2;
  
wire [3:0]out;
wire cout;
    
sum4bits auxsum(
.in1(in1),
.in2(in2),
.out(out),
.cout(cout)
);
    
  initial begin
  in1=0;
      for(in2=0;in2<16;in2=in2+1)begin
      if(in2==0)
      in1=in1+1;
      
      #5 $display("%d + %d = %d ",in1,in2,out);
      end
  
  
  end
 
initial begin: TEST_CASE   
$dumpfile("simSum4bits.v");
#(200) $finish;
end   

endmodule
