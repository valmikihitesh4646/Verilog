// `timescale 1ns/1ns
// `include "last.v"
// module last_tb;

// reg i0,i1,i2,i3,s1,s0;
// wire out;
// mux uut(out,i0,i1,i2,i3,s1,s0);


// initial begin
//         i0 = 0;
//     i1 = 1;
//     i2 = 0;
//     i3 = 1;

//   #10 s1 = 0; s0 = 0;
//   #10 s1 = 0; s0 = 1;
//   #10 s1 = 1; s0 = 0;
//   #10 s1 = 1; s0 = 1;
//   #10 s1 = 1'bx; s0 = 1;


// $finish;

// end


// initial begin
// $monitor("time = %0t | s1 = %0b | s0 = %0b | out = %0b",$time,s1,s0,out);    
// end


// while 
// `timescale 1ns/1ns
// `include "last.v"
// module last_tb;
// wire clk;
// que15 uut(.clk(clk));

// initial begin
//     $monitor("time = %0t | clk = %0b",$time,clk);
//   #30  $finish;
// end








`timescale 1ns/1ns
`include "last.v"
module last_tb;
wire [7:0] counter;
counter_test uut(counter);

initial begin
 #0 $monitor("time = %0t | counter = %0d", $time,counter);

    #1000  $finish;
end


    initial begin
     $dumpfile("last.vcd");
     $dumpvars(0,last_tb);
end
endmodule
