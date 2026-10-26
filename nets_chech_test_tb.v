timescale 1ns/1ns
include "nets_chech_test.v"

module net_chech_list_tb.v;
wire b;
reg a;

wire_strong_weak_check mut(0);

initial begin
    $dumpfile("nets_chech_list_tb.vcd");
    $dumpvars(0,net_chech_list_tb);

a = 0;
$display("output of net_check is : b = ",b);
#20

end
endmodule