`timescale 1ns / 1ps

module simClk();

mclk insMclk(
    .a(a),
    .clk(clk)
    );
    
wire clk;
reg a;
reg [1:0]auxA;

initial 
begin
    for (auxA=0;auxA<4;auxA=auxA+1)
    begin
    a=auxA[0];
    #20
    $display("El contador es: %d ",a);
    end
end

initial begin:TEST_CASE
$dumpfile("simClk.v");
#(200);
$finish;
end

endmodule
