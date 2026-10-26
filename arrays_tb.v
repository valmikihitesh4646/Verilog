// `timescale 1ns/1ns
// `include "arrays.v"

// module arrays_tb;
// arrays mut();

// initial begin
    

//     $dumpfile("arrays.vcd");
//     $dumpvars(0,arrays_tb);

//      $finish;
// end
// endmodule




`timescale 1ns/1ns
`include "arrays.v"

module arrays_tb;
arrays mut();

initial begin
    

    $dumpfile("arrays.vcd");
    $dumpvars(0,arrays_tb);

     $finish;
end
endmodule