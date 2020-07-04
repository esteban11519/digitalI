`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2020 14:11:35
// Design Name: 
// Module Name: multiplicador
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


module multiplicador#(
    parameter AW=2,
    parameter BW=2
    )
    (
    input [AW-1:0] N1,
    input [BW-1:0] N2,
    input init,
    input clk
    );
        
    reg [AW+BW-1:0]pp;
    reg status=0,done=0,reset=1,sh=0,add=0;
    reg [AW+BW-1:0] A;
    reg [BW-1:0] B;
    
    wire z,LSBB;
    parameter start=0,check=1,shift=2,ADD=3,end1=4;
        
    always@ (posedge clk)begin
        
        if(add==1)begin
        pp=pp+A;
        end    
        else begin
            if(sh==1)begin
            A=A<<1;
            B=B>>1;
            end
        
        end
    end
    
    
    always@ (posedge clk)begin
    if(reset==1)begin
        A={2'b00,N1};
        B=N2;
        pp=0;
    end
    end
    
    assign z= (B==0?1:0);
    assign LSBB= B[0];
    
 always@(posedge clk)
 begin
     case (status)
         start:begin
              sh=0;
              add=0;
              if (init==1) begin
              status=check;
              done=0;
              reset=1;
              end
                
         end
         check:begin
              done=0;
              reset=0;
              sh=0;
              add=0;
              status=(LSBB==1?ADD:shift);   
         end
         shift:begin
              done=0;
              reset=0;
              sh=1;
              add=0;
              status=(z==0?check:end1);   
         end
         ADD:begin
              done=0;
              reset=0;
              sh=0;
              add=1;
              status=shift;   
         end
         end1:begin
              done=1;
              reset=0;
              sh=0;
              add=0;
              status=start;   
         end
         default:begin
         status=start;
         end
         
     endcase
 end   
 
endmodule
