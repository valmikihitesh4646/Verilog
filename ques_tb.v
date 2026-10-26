`timescale 1ns/1ns
`include "ques.v"

module ques_tb;

questions mut();

initial begin
$dumpfile("ques.vcd");
$dumpvars(0,ques_tb);

$finish;

end
endmodule