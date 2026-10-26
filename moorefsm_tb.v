
// // MOOOORE  fsm 010 non overlapping

`timescale 1ns/1ns
`include "moorefsm.v"

module moorefsm_tb;

wire detected;
reg x,clk,reset;

moorefsm_NOL uut(.x(x), .reset(reset), .clk(clk), .detected(detected));

always begin
    #5 clk = ~clk;

end

initial begin
    clk = 0;
    reset = 0;
    x=0;

#10 reset = 1;
#10 reset = 0;

#10  x = 0;
#10  x = 1;
#10  x = 0;
#10  x = 1;

#10  x = 0;
#10  x = 1;
#10  x =0;
#60;

$finish;

end
initial $monitor("time = %0t | x = %0b |  detected = %0b", $time,x,detected);


    initial begin
     $dumpfile("moorefsm.vcd");
     $dumpvars(0,moorefsm_tb);
end
endmodule