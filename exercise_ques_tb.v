`timescale 1ns/1ns
`include "exercise_ques.v"

module exercise_ques_tb;

exercise mut();

initial begin
$dumpfile("exercise_ques.vcd");
$dumpvars(0,exercise_ques_tb);

 #50   $finish;

end
endmodule