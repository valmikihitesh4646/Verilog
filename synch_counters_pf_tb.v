// `timescale 1ns/1ns
// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;

// wire q0,q1;
// reg clk,reset;

// synch_counter uut(.q0(q0), .q1(q1), .clk(clk));

// always #5 clk  = ~clk;

// initial begin
//     $monitor("time = %0t | clk = %0b | q1q0 = %0b%0b | reset = %0b",$time,clk,q1,q0,reset);
//     clk = 0;
// reset = 1;

// #10 reset = 0;

//  #100;   $finish;
// end

// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);

// end
// endmodule


//  `timescale 1ns/1ns
// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;
// wire q1,q0;
// reg clk;
// synch uut(q1,q0,clk);
// always #5 clk = ~clk;

// initial begin
// $monitor("clk = %0t | q1q0 = %b%b", clk,q1,q0);
// clk = 0;

// #80 $finish;
// end


// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);

// end
// endmodule


//  `timescale 1ns/1ns
// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;
// wire q1,q0;
// reg clk;
// synch uut(q1,q0,clk);
// always #5 clk = ~clk;

// initial begin
// $monitor("clk = %0t | q1q0 = %b%b", clk,q1,q0);
// clk = 0;

// #80 $finish;
// end


// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);

// end
// endmodule

//  `timescale 1ns/1ns
// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;
// wire q2,q1,q0;
// reg clk;
// synch_3bit_up uut(q2,q1,q0,clk);

// always #5 clk = ~clk;

// initial begin
// $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b",$time,clk,q2,q1,q0);
// clk = 0;

// #100 $finish;
// end


// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);

// end
// endmodule

// ////4-bit synchronous down counter Using T flip-flop 
//  `timescale 1ns/1ns
// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;
// wire q3,q2,q1,q0;
// reg clk;
// synch_4bitdown uut(q3,q2,q1,q0,clk);

// always #5 clk = ~clk;

// initial begin
// $monitor("time = %0t | clk = %0b | q3q2q1q0 = %b%b%b%b",$time,clk,q3,q2,q1,q0);
// clk = 0;

// #200 $finish;
// end


// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);

// end
// endmodule


//0 ->  3 -> 5 -> 6. Sincronous use tff `timescale 1ns/1ns
// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;
// wire q2,q1,q0;
// reg clk;
// counter uut(q2,q1,q0,clk);

// always #5 clk = ~clk;

// initial begin
// $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b",$time,clk,q2,q1,q0);
// clk = 0;

// #200 $finish;
// end


// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);

// end
// endmodule




//2 bit up down counter using d ff
//s=1 up    and  s=0 downn
// 2 bit up down counter using D FF
// s=1 up and s=0 down

// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;
// wire q1_next,q0_next;
// wire q1,q0;
// reg clk;
// reg s;

// updowncounter uut(q1,q0,q1_next,q0_next,clk,s);

// always #5 clk = ~clk;

// initial begin

// $monitor("time = %0t | clk = %0b | s = %b | q1q0 = %b%b | q1_nextq0_next = %b%b",$time,clk,s,q1,q0,q1_next,q0_next);

// clk = 0;
// s = 0;

// #50 s = 1;

// #200 $finish;

// end

// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);
// end

// endmodule


// // ring counter
// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;

// wire q0,q1,q2,q3;
// reg clk,clear,preset;


// ringcounter uut(q0,q1,q2,q3,clk);

// always #5 clk = ~clk;

// initial begin

// $monitor("time = %0t | clk = %0b | q0,q1,q2,q3 = %b%b%b%b ",$time,clk,q0,q1,q2,q3);
// clk = 0;
// // clear = 1;
// //  preset = 0;
// // #10 clear = 0; 
// #200 $finish;

// end

// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);
// end

// endmodule


// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;

// wire q0,q1,q2,q3;

// reg clk;
// reg clear,preset;

// ringcounter uut(q0,q1,q2,q3,clk,clear,preset);

// always #5 clk = ~clk;

// initial begin

// $monitor("time = %0t | clk = %0b | q0q1q2q3 = %b%b%b%b | clear = %b | preset = %b",
//          $time,clk,q0,q1,q2,q3,clear,preset);

// clk = 0;

// clear = 1;
// preset = 1;

// #10 clear = 0;
//     preset = 0;

// #100 $finish;

// end

// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);
// end

// endmodule


// // ring counter
// `include "synch_counters_pf.v"
// module synch_counters_tb;

// wire q0,q1,q2,q3;
// reg clk;
// reg clear,preset;

// ringcounter uut(q0,q1,q2,q3,clk,clear,preset);
// always #5 clk = ~clk;
// initial begin

// $monitor("time = %0t | clk = %0b | q0q1q2q3 = %b%b%b%b | clear = %b | preset = %b",$time,clk,q0,q1,q2,q3,clear,preset);

// clear = 1;
// preset = 1;

// #10 clear = 0;
// preset = 0;

//     #100 $finish;
// end

// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);
// end





// // // johnson twisted counter 
// `include "synch_counters_pf.v"

// module synch_counters_pf_tb;

// wire q0,q1,q2,q3;
// reg clk;


// johnsoncounter uut(q0,q1,q2,q3,clk);

// always #5 clk = ~clk;

// initial begin

// $monitor("time = %0t | clk = %0b | q0,q1,q2,q3 = %b%b%b%b ",$time,clk,q0,q1,q2,q3);
// clk = 0;
// // clear = 1;
// //  preset = 0;
// // #10 clear = 0; 
// #200 $finish;

// end

// initial begin
//     $dumpfile("synch_counters_pf.vcd");
//     $dumpvars(0,synch_counters_pf_tb);
// end

// endmodule


// // // johnson twisted counter 
`timescale 1ns/1ns
`include "synch_counters_pf.v"

module synch_counters_pf_tb;

reg clk,clear;
wire q3,q2,q1,q0;
johnsoncounter uut(q0,q1,q2,q3,clk,clear);
always #5 clk = ~clk;

initial begin
$monitor("time = %0t | clk = %b | q0q1q2q3 = %b%b%b%b | clear = %b",$time,clk,q0,q1,q2,q3,clear);    
clk = 0;
clear = 1;

#10 clear = 0;



  #100  $finish;
end


initial begin
    $dumpfile("synch_counters_pf.vcd");
    $dumpvars(0, synch_counters_pf_tb);

end
endmodule