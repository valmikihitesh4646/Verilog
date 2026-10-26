// `timescale 1ns/1ns
// `include "memories.v"

// module memories_tb;

// memories mut();
// initial begin

// $dumpfile("memories.vcd");    
// $dumpvars(0,memories_tb);

// $finish;
// end
// endmodule




`timescale 1ns/1ns
`include "memories.v"

module memories_tb;

initilize_memory mut();
initial begin

$dumpfile("memories.vcd");    
$dumpvars(0,memories_tb);

$finish;


end
endmodule