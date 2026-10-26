`timescale 1ns/1ns
`include "nets_check_test.v"

module nets_check_test_tb;
reg a;
wire b;

wire_strong_strong_check mut(b);

initial begin
    $dumpfile("nets_check_test_tb.vcd");
    $dumpvars(0,nets_check_test_tb);

a = 0;
$display("output of nets_check is : b = ",b);
#20;

end
endmodule