
// // mealy fsm 011 non overlapping
// `timescale 1ns/1ns
// `include "mealyfsm.v"

// module mealyfsm_tb;

// wire detected;
// reg x,clk,reset;

//   mealy_011_NOL uut(.x(x), .reset(reset), .clk(clk), .detected(detected));

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
// #10 x = 1;
// $finish;

// end
// initial $monitor("time = %0t and detected = %0b", $time,detected);


//     initial begin
//      $dumpfile("mealyfsm.vcd");
//      $dumpvars(0,mealyfsm_tb);
// end
// endmodule

// // mealy fsm 11011 non overlapping

// // 
// `timescale 1ns/1ns
// `include "mealyfsm.v"

// module mealyfsm_tb;

// wire detected;
// reg x,clk,reset;

//  mealy_11011_NOL uut(.x(x), .reset(reset), .clk(clk), .detected(detected));

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
// #10 x = 1;
// #10 x = 0;
// #10 x = 1;
// #10 x = 1;     // Non-overlapping 
// #10 x = 1;
// #10 x = 1;
// #10 x = 0;
// #10 x = 1;
// #10 x = 1;

// $finish;

// end
// initial begin
//     $monitor("time = %0t and detected = %0b", $time,detected);
// end

//     initial begin
//      $dumpfile("mealyfsm.vcd");
//      $dumpvars(0,mealyfsm_tb);
// end
// endmodule




// // mealy fsm 101  overlapping allowed
// `timescale 1ns/1ns
// `include "mealyfsm.v"

// module mealyfsm_tb;

// wire detected;
// reg x,clk,reset;

//  mealy_101_overlapping uut(.x(x), .reset(reset), .clk(clk), .detected(detected));

// always begin
//     #5 clk = ~clk;

// end

// initial begin
//     clk = 0;
//     reset = 0;
//     x=0;

// #10 reset = 1;
// #10 reset = 0;

// #10  x = 1;
// #10  x = 1;
// #10  x = 1;
// #10  x = 0;
// #10  x = 1;
// #10  x = 0;
// #10  x = 1;
// #30;
// $finish;

// end
// initial $monitor("time = %0t and detected = %0b", $time,detected);


//     initial begin
//      $dumpfile("mealyfsm.vcd");
//      $dumpvars(0,mealyfsm_tb);
// end
// endmodule


// // MOOOORE  fsm 101 non overlapping


// `timescale 1ns/1ns
// `include "mealyfsm.v"

// module mealyfsm_tb;

// wire detected;
// reg x,clk,reset;

// moorefsm_NOL uut(.x(x), .reset(reset), .clk(clk), .detected(detected));

// always begin
//     #5 clk = ~clk;

// end

// initial begin
//     clk = 0;
//     reset = 0;
//     x=0;

// #10 reset = 1;
// #10 reset = 0;

// #10  x = 1;
// #10  x = 0;
// #10  x = 1;
// #10  x = 0;
// #10  x = 1;
// $finish;

// end
// initial $monitor("time = %0t and detected = %0b", $time,detected);


//     initial begin
//      $dumpfile("mealyfsm.vcd");
//      $dumpvars(0,mealyfsm_tb);
// end
// endmodule