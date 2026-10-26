`timescale 1ns/1ns
`include "parameters.v"

module parameters_tb;

parameters mut();

initial begin
$dumpfile("parameters.vcd");
$dumpvars(0,parameters_tb);

$finish;

end
endmodule