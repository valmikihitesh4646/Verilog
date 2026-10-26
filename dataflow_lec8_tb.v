`timescale 1ns/1ns
`include dataflow_lec8_tb.v












initial begin
$dumpfile("dataflow_lec8.vcd");
$dumpvars(0,dataflow_lec8_tb);

 #50  $finish;

end
endmodule