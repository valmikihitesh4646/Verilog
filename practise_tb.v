`timescale 1ns/1ns
`include "practise.v"

module practise_tb;
reg x,clk,reset;
wire detected;

mealy_11011_overlap uut(
    .detected(detected),
    .x(x),
    .clk(clk),
    .reset(reset)
);

always begin
    
    #5 clk = ~clk;
end


initial begin
     $monitor("time = %0t | x = %0b | detected = %0b", $time,x,detected);
    clk = 0;
    reset = 1;
    x=0;

    #10 reset = 0;
  


#10 x = 1;
#10 x = 1;
#10 x = 0;
#10 x = 1;
#10 x = 1;
// #10 x = 0;

// #50 $monitor("x = %0b | detected = %0b", x,detected);

 #10 $finish;
end


initial begin
$dumpfile("practise.vcd");
$dumpvars(0,practise_tb);
end
endmodule