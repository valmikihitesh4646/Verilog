`timescale 1ns/1ns
`include "initial_always.v"


module clock_gen(clock);

wire clk;

stimulus mut();



initial begin
    $dumpfile("initial_always.vcd");

$dumpvars(0,initial_always_tb);

end
endmodule