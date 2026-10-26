// `timescale 1ns/1ns
// `include "projects.v"

// module projects_tb;
// wire q2,q1,q0;

// reg clk,reset,enable;
// digital_dice uut(q2,q1,q0,clk,reset,enable);

// always #5 clk = ~clk;

// initial begin
// $monitor("time = %0t | clk = %b | enable = %b | q2q1q0 = %b%b%b",$time,clk,enable,q2,q1,q0);
// clk= 0;
// reset = 1;
// enable = 0;

// #10 reset = 0;
// enable = 1;



// #100 $finish;
// end

// initial begin
//     $dumpfile("projects.vcd");
//     $dumpvars(0, projects_tb);

// end
// endmodule

// `timescale 1ns/1ns
// `include "projects.v"

// module projects_tb;
// wire [3:0] ones;

// reg clk,reset,enable;
// ones uut(ones,clk,reset,enable);

// always #5 clk = ~clk;

// initial begin
// $monitor("time = %0t | clk = %b | enable = %b | ones = %d",$time,clk,enable,ones);
// clk= 0;
// reset = 1;
// enable = 0;

// #10 reset = 0;
// enable = 1;



// #200 $finish;
// end

// initial begin
//     $dumpfile("projects.vcd");
//     $dumpvars(0, projects_tb);

// end
// endmodule


`timescale 1ns/1ns
`include "projects.v"

module projects_tb;
wire [3:0] tens;

reg clk,reset,enable;
tens uut(tens,clk,reset,enable);

always #5 clk = ~clk;

initial begin
$monitor("time = %0t | clk = %b | enable = %b | tens= %d",$time,clk,enable,tens);
clk= 0;
reset = 1;
enable = 0;

#10 reset = 0;
enable = 1;



#200 $finish;
end

initial begin
    $dumpfile("projects.vcd");
    $dumpvars(0, projects_tb);

end
endmodule