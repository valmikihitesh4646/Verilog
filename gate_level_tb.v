// `timescale 1ns/1ns
// `include "gate_level.v"

// module gate_level_tb;

// gate_level mut();

// initial begin
// $dumpfile("gate_level.vcd");
// $dumpvars(0,gate_level_tb);

//  #50  $finish;

// end
// endmodule

`timescale 1ns/1ns
`include "gate_level.v"

module gate_level_tb;

bufifandnotif mut();

initial begin
$dumpfile("gate_level.vcd");
$dumpvars(0,gate_level_tb);

 #50  $finish;

end
endmodule