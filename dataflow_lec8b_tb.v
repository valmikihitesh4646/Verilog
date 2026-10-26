// `timescale 1ns/1ns
// `include "dataflow_lec8b.v"

// module dataflow_lec8b_tb;

// reg [3:0] a;
// reg [3:0] b;

// reg cin;
// wire [3:0] sum;
// wire cout;

// ripple_4bit_adder uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
// initial begin
//     $monitor("time = %0t, a = %0b, b=%0b, cin = %0b | sum = %0b, cout = %0b",$time,a,b,cin,sum,cout);

// a = 4'b1010;  b = 4'b0000;  cin = 0;  #10;
// a = 4'b1110;  b = 4'b1111; cin = 0;  #10;
// a = 4'b1000;  b = 4'b1110; cin = 0; #10;
// a = 4'b1011;  b = 4'b1001; cin = 0;  #10;
// end
 
// initial begin
// $dumpfile("dataflow_lec8b.vcd");
// $dumpvars(0,dataflow_lec8b_tb);

//  #60  $finish;

// end
// endmodule

// full subractor

// `timescale 1ns/1ns
// `include "dataflow_lec8b.v"

// module dataflow_lec8b_tb;

// reg a,b,c;
// wire diff,borr;
// full_sub uut(.a(a), .b(b), .c(c), .diff(diff), .borr(borr));
// initial begin
// $monitor("time = %0t, a = %0b, b= %0b, c=%0b | diff = %0b and  borr = %0b",$time,a,b,c,diff,borr);

// a = 0;  b = 0;  c = 0; #10;
// a = 0;  b = 0;  c = 1; #10;
// a = 0;  b = 1;  c = 0; #10;
// a = 0;  b = 1;  c = 1; #10;
// a = 1;  b = 0;  c = 0; #10;
// a = 1;  b = 0;  c = 1; #10;
// a = 1;  b = 1;  c = 0; #10;
// a = 1;  b = 1;  c = 1; #10;
// end

// initial begin
    
// $dumpfile("dataflow_lec8b.vcd");
// $dumpvars(0,dataflow_lec8b_tb);

//  #90   $finish;
// end
// endmodule

//delays
`timescale 1ps/1ps
`include "dataflow_lec8b.v"

module dataflow_lec8b_tb;
reg a,b,c;
wire out;
delays uut(
    .out(out),
    .a(a),
    .b(b),
    .c(c)
);
initial begin
    $monitor("time =%0t, a=%0b, b=%0b, c= %0b | out = %0b",$time,a,b,c,out);
    
a = 1'b0; b=1'b0; c=1'b0;
#10   a = 1'b0; b=1'b0; c=1'b1;
#10   a = 1'b0; b=1'b1; c=1'b0;
#10   a = 1'b1; b=1'b1; c=1'b1;

end


initial begin
        
$dumpfile("dataflow_lec8b.vcd");
$dumpvars(0,dataflow_lec8b_tb);

 #90   $finish;
end
endmodule