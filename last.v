// module mux(out,i0,i1,i2,i3,s1,s0);
// output  reg out;
// input i0,i1,i2,i3;
// input s1,s0;

// always @ (*) begin
// if({s1,s0} == 2'b00)
// out = i0;

// else if({s1,s0} == 2'b01)
// out = i1;

// else if({s1,s0} == 2'b10)
// out = i2;

// else if({s1,s0} == 2'b11)
// out = i3;

// else
// out = 1'bx;

// end
// endmodule

// module last(clk);
// output reg clk = 0;

// initial begin
// while(1) begin

//    #5 clk = ~clk;

// end
// end
// endmodule

// module que15(clk);

// output reg clk = 0;
// initial begin


// forever begin
// #6 clk = 1'b1;
// #4 clk = 1'b0;

// // end 
// // end
// // endmodule

// module que16(a,clk);

// reg [3:0] a;
// reg clk;

//  initial begin

// repeat (20) @ (posedge clk) begin


// end
// end
// endmodule


// last que last video
 
 module counter_test(count);
reg clk = 0;
    output reg  [7:0] count = 8'd5;

always #5 clk = ~clk;

initial begin: counter_block

forever @(posedge clk) begin
count = count + 1;
if(count == 8'd22) disable counter_block;


end
end

 endmodule


 module counter_test(count,clk);
 output reg [7:0] counter = 8'd5;
 input clk;

always #5 clk = ~clk; 
 initial begin


 end
 endmodule