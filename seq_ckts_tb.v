`timescale 1ns/1ns
`include "seq_ckts.v"

module seq_ckts_tb;

wire q;
reg d,reset,set,clk;

dff uut(.d(d), .(reset)reset, .(set)set, .(clk)clk, .q(q));

initial begin
    


$finish;
end

    initial begin
     $dumpfile("seq_ckts.vcd");
     $dumpvars(0,seq_ckts_tb);
end
endmodule
