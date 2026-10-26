// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;
// reg clk,reset;
// wire [7:0] count;

// counter uut(.clk(clk), .reset(reset), .count(count) );

// always #5 clk = ~clk;

// initial begin
//     $monitor("time = %0t | count = %b and %d | clk = %0b  | reset = %0b", $time,count,count,clk,reset);
// clk = 0;
// reset = 1;

// #10 reset = 0;

// #200 $finish;


// end
// endmodule  



// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;
// reg clk,reset;
// wire [7:0] count;

// counter uut(.clk(clk), .reset(reset), .count(count) );

// always #5 clk = ~clk;

// initial begin
//     $monitor("time = %0t | count = %b and %d | clk = %0b  | reset = %0b", $time,count,count,clk,reset);
// clk = 0;
// reset = 0;

// #10 reset = 1;


// $finish;


// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end

// endmodule

// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// reg clk, rst;
// reg [7:0] data;

// wire [7:0] count;

// counter uut(
//     .count(count),
//     .clk(clk),
//     .rst(rst),
//     .data(data)
// );

// always #5 clk = ~clk;

// initial begin

//     $monitor("time = %0t | rst = %0b | clk = %0b | count = %0d",
//              $time, rst, clk, count);

//     clk = 0;
//     rst = 1;
//     data = 8'd0;

//     // rst = 1 → counter forced to 10
//     #10 rst = 0;
    
    

//     // Allow counter to run
//     #350;

//     $finish;

// end


// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end

// endmodule

// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire clk_out;
// reg reset,clk;

// freq_div_4 uut(clk_out,clk,reset);
// always #5 clk = ~clk;

// initial begin
// $monitor("time = %0t, clk = %b, clk_out = %b, reset = %0b",$time,clk,clk_out,reset);    
//    clk = 0;
//     reset = 1;

//     #10 reset = 0;

//     #90 $finish;

// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// // endmodule

// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1;
// reg reset,clk;


// asynch_2bit uut(
//     .clk(clk),
//     .reset(reset),
//     .q0(q0),
//     .q1(q1)
// );

// always #5 clk  = ~clk;
// initial begin
// $monitor("time = %0t | clk = %0b | q0 = %0b | q1= %0b | reset = %0b",$time,clk,q0,q1,reset);
// clk = 0;
// reset = 1;

 

// #10 reset = 0;

//     #90; $finish;
// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// endmodule



// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1;
// reg reset,clk;


// asynch_2bit uut(
//     .clk(clk),
//     .reset(reset),
//     .q0(q0),
//     .q1(q1)
// );

// always #5 clk  = ~clk;
// initial begin
// $monitor("time = %0t | clk = %0b | q0 = %0b | q1= %0b | reset = %0b",$time,clk,q0,q1,reset);
// clk = 0;
// reset = 1;

 

// #10 reset = 0;

//     #90; $finish;
// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// endmodule


// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1,q2;                               //// jk and t ff same code
// reg reset,clk;


// bit3_up_asynch uut(
//     .clk(clk),
//     .reset(reset),
//     .q0(q0),
//     .q1(q1),
//       .q2(q2)

// );

// always #5 clk  = ~clk;
// initial begin
// $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b |reset = %0b",$time,clk,q2,q1,q0,reset);
// clk = 0;
// reset = 1;

 

// #10 reset = 0;

//     #90; $finish;
// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// endmodule





// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1,q2;          
// reg d2,d1,d0;                     //// dff up and down counter
// reg reset,clk;


// bit3upasynchdff uut(
//     .clk(clk),
//     .reset(reset),
//     .q0(q0),
//     .q1(q1),
//       .q2(q2)
// //       .d2(d2),
// //   .d1(d1),
// //     .d0(d0)
// );

// always #5 clk  = ~clk;
// initial begin
// $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b |reset = %0b",$time,clk,q2,q1,q0,reset);
// clk = 0;
// reset = 1;

 

// #10 reset = 0;

//     #90; $finish;
// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// endmodule




// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1,q2,q3;          
// reg reset,clk;


// counter_4bit_asynch_up uut(
//     .clk(clk),
//     .reset(reset),
//     .q0(q0),
//     .q1(q1),
//       .q2(q2),
//       .q3(q3)

// );

// always #5 clk  = ~clk;
// initial begin
// $monitor("time = %0t | clk = %0b | q3q2q1q0 = %b%b%b%b |reset = %0b",$time,clk,q3,q2,q1,q0,reset);
// clk = 0;
// reset = 1;

 

// #10 reset = 0;

//     #200; $finish;
// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// endmodule


// //4BIT async up counter only d ff
// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1,q2,q3;          
// reg reset,clk;


// counter_4bit_asynch_up uut(
//     .clk(clk),
//     .reset(reset),
//     .q0(q0),
//     .q1(q1),
//       .q2(q2),
//       .q3(q3)

// );

// always #5 clk  = ~clk;
// initial begin
// $monitor("time = %0t | clk = %0b | q3q2q1q0 = %b%b%b%b |reset = %0b",$time,clk,q3,q2,q1,q0,reset);
// clk = 0;
// reset = 1;

 

// #10 reset = 0;

//     #200; $finish;
// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// endmodule



// // //4BIT async down counter only jk/t ff
// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1,q2,q3;          
// reg reset,clk;


// counter_4bit_asynch_down uut(
//     .clk(clk),
//     .reset(reset),
//     .q0(q0),
//     .q1(q1),
//       .q2(q2),
//       .q3(q3)

// );

// always #5 clk  = ~clk;
// initial begin
// $monitor("time = %0t | clk = %0b | q3q2q1q0 = %b%b%b%b |reset = %0b",$time,clk,q3,q2,q1,q0,reset);
// clk = 0;
// reset = 1;

// #10 reset = 0;

//     #200; $finish;
// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// endmodule


// //// NON-BINARY asynch down counter  mod 5 counter
// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1,q2;          
// reg clk;

//  mod5_downcounter uut(
//     .clk(clk),
//     .q0(q0),
//     .q1(q1),
//     .preset(preset),
//       .q2(q2)


// );

// always #5 clk  = ~clk;
// initial begin
// $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b |preset = %0b",$time,clk,q2,q1,q0,preset);
// clk = 0;


//     #100; $finish;
// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end
// endmodule


// NON-BINARY ASYNCH DOWN COUNTER
// MOD-5 COUNTER
// NON-BINARY asynch down counter  mod 5 counter all set at beginning
// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1,q2;
// wire preset;
// reg clk;

// mod5_downcounter uut(
//     .clk(clk),
//     .q0(q0),
//     .q1(q1),
//     .q2(q2),
//     .preset(preset)
// );

// always #5 clk = ~clk;

// initial begin

//     $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b | preset = %0b",
//              $time, clk, q2, q1, q0, preset);

//     clk = 0;

//     #100 $finish;

// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end

// endmodule




// NON-BINARY asynch down counter  mod 5 counter all reset (000)at beginning
// `timescale 1ns/1ns
// `include "udemy_counters.v"

// module udemy_counters_tb;

// wire q0,q1,q2;
// wire clear;
// reg clk;

// mod5counter uut(
//     .clk(clk),
//     .q0(q0),
//     .q1(q1),
//     .q2(q2),
//     .clear(clear)
// );

// always #5 clk = ~clk;

// initial begin

//     $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b | clear = %0b",
//              $time, clk, q2, q1, q0, clear);

//     clk = 0;

//     #100 $finish;

// end

// initial begin
//     $dumpfile("udemy_counters.vcd");
//     $dumpvars(0, udemy_counters_tb);
// end

// endmodule

// NON-BINARY ASYNCHRONOUS DOWN COUNTER
// MOD-5 COUNTER

`timescale 1ns/1ns
`include "udemy_counters.v"

module udemy_counters_tb;

wire q0,q1,q2;
wire clear;

reg clk;


mod5counter uut(
    .clk(clk),
    .q0(q0),
    .q1(q1),
    .q2(q2),
    .clear(clear)
);


always #5 clk = ~clk;


initial begin

    $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b | clear = %0b",
             $time, clk, q2, q1, q0, clear);

    clk = 0;

    #100 $finish;

end


initial begin
    $dumpfile("udemy_counters.vcd");
    $dumpvars(0, udemy_counters_tb);
end

endmodule