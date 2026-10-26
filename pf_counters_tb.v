
// `timescale 1ns/1ns
// `include "pf_counters.v"

// module pf_counters_tb;

// wire q0,q1,q2;
// wire clear;

// reg clk;


// pf_counters uut(
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
//     $dumpfile("pf_counters.vcd");
//     $dumpvars(0, pf_counters_tb);
// end

// endmodule



// `timescale 1ns/1ns
// `include "pf_counters.v"

// module pf_counters_tb;

// wire q0,q1,q2,q3;
// wire clear;
// reg clk;


// mod12_aynch_down uut(
//     .clk(clk),
//     .q0(q0),
//     .q1(q1),
//     .q2(q2),
//     .q3(q3),
//     .clear(clear)

// );


// always #5 clk = ~clk;


// initial begin

//     $monitor("time = %0t | clk = %0b | q3q2q1q0 = %b%b%b%b | clear = %0b", $time, clk,q3, q2, q1, q0, clear);

//     clk = 0;

//     #200 $finish;

// end


// initial begin
//     $dumpfile("pf_counters.vcd");
//     $dumpvars(0, pf_counters_tb);
// end

// endmodule




// ///mod4 asynch nonbinary down counter all states SET at starting
// `timescale 1ns/1ns
// `include "pf_counters.v"

// module pf_counters_tb;

// wire q0,q1,q2;
// wire preset;
// reg clk;


// mod4_downcounter uut(
//     .clk(clk),
//     .q0(q0),
//     .q1(q1),
//     .q2(q2),
//     .preset(preset)

// );


// always #5 clk = ~clk;


// initial begin

//     $monitor("time = %0t | clk = %0b | q2q1q0 = %b%b%b | preset = %0b", $time, clk, q2, q1, q0, preset);

//     clk = 0;

//     #100 $finish;

// end


// initial begin
//     $dumpfile("pf_counters.vcd");
//     $dumpvars(0, pf_counters_tb);
// end

// endmodule


// ///mod12 asynch nonbinary UPP counter all states RESET at starting
//  `timescale 1ns/1ns
// `include "pf_counters.v"

// module pf_counters_tb;

// wire q0,q1,q2,q3;
// wire preset;  
// // wire [3:0] count_decimal;
// reg clk;


// mod12_aynch_up uut(
//     .clk(clk),
//     .q0(q0),
//     .q1(q1),
//     .q2(q2),
//     .q3(q3),
//     .preset(preset)

// );

//  //assign count_decimal = {q3,q2,q1,q0};
// always #5 clk = ~clk;


// initial begin

//     $monitor("time = %0t | clk = %0b | q3q2q1q0 = %b%b%b%b | preset = %0b", $time, clk,q3, q2, q1, q0, preset);

// //$monitor("time = %0t | clk = %0b | q3q2q1q0 = %b%b%b%b | decimal = %0d | clear = %0b",$time, clk, q3, q2, q1, q0, (q3*8 + q2*4 + q1*2 + q0), clear);  


//     clk = 0;

//     #200 $finish;

// end


// initial begin
//     $dumpfile("pf_counters.vcd");
//     $dumpvars(0, pf_counters_tb);
// end

// endmodule


// ///mod10 asynch nonbinary UPP counter all states RESET at starting
`timescale 1ns/1ns
`include "pf_counters.v"

module pf_counters_tb;

wire q0,q1,q2,q3;
wire clear;
reg clk;


mod10_aynch_up uut(
    .clk(clk),
    .q0(q0),
    .q1(q1),
    .q2(q2),
    .q3(q3),
    .clear(clear)

);


always #5 clk = ~clk;


initial begin

    $monitor("time = %0t | clk = %0b | q3q2q1q0 = %b%b%b%b | clear = %0b", $time, clk,q3, q2, q1, q0, clear);

    clk = 0;

    #200 $finish;

end


initial begin
    $dumpfile("pf_counters.vcd");
    $dumpvars(0, pf_counters_tb);
end

endmodule
