`timescale 1ns/1ns
`include "d_flipflop.v"

module d_flipflop_tb;
wire q;
reg d,clk,set,reset;

d_flipflop uut(.q(q), .d(d), .clk(clk), .set(set), .reset(reset));
 
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin  
$monitor("time = %0t | d=%0b | clk=%0b | set=%0b | reset=%0b | q=%0b",$time,d,clk,set,reset,q);

d=0; reset=1; set=0; #10;
d=1; reset=0; set=1; #10;
d=0; reset=1; set=0; #10;
d=1; reset=0; set=1; #10;


$finish;
end


    initial begin
     $dumpfile("d_flipflop.vcd");
     $dumpvars(0,d_flipflop_tb);
end
endmodule

// mealy fsm 101 non overlapping

// `timescale 1ns/1ns
// `include "d_flipflop.v"

// module d_flip_flop_tb;

// wire detected;
// reg x,clk,reset;

// mealy_101_nonoverlapping uut(.x(x), .reset(reset), .clk(clk), .detected(detected));

// always begin
//     #5 clk = ~clk;

// end

// initial begin
//     clk = 0;
//     reset = 0;
//     x=0;

// #10 reset = 1;
// #10 reset = 0;

// #10 x = 1;
// #10 x = 0;
// #10 x = 1;
// #10 x = 1;
// #10 x = 0;
// #10 x = 1;
// $finish;

// end
// initial $monitor("time = %0t and detected = %0b", $time,detected);


//     initial begin
//      $dumpfile("d_flipflop.vcd");
//      $dumpvars(0,d_flipflop_tb);
// end
// endmodule

// mealy fsm 011 non overlapping

// `timescale 1ns/1ns
// `include "d_flipflop.v"

// module d_flip_flop_tb;

// wire detected;
// reg x,clk,reset;

//  d_flip_flop uut(.x(x), .reset(reset), .clk(clk), .detected(detected));

// always begin
//     #5 clk = ~clk;

// end

// initial begin
//     clk = 0;
//     reset = 0;
//     x=0;

// #10 reset = 1;
// #10 reset = 0;

// #10 x = 0;
// #10 x = 1;
// #10 x = 1;
// #10 x = 0;
// #10 x = 1;
// #10 x = 1;
// $finish;

// end
// initial $monitor("time = %0t and detected = %0b", $time,detected);


//     initial begin
//      $dumpfile("d_flipflop.vcd");
//      $dumpvars(0,d_flipflop_tb);
// end
// endmodule