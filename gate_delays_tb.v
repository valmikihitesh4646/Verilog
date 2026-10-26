`timescale 1ns/1ns
`include "gate_delays.v"

module gate_delays_tb;

reg a,b,c;
wire out;
delay d1(out,a,b,c);

initial begin
$dumpfile("gate_delays.vcd");
$dumpvars(0,gate_delays_tb);

a = 1'b0; b = 1'b0; c = 1'b0;
#10   a = 1'b1; b = 1'b1; c = 1'b1;
#10   a = 1'b1; b = 1'b1; c = 1'b0;

#20   $finish;

end
endmodule