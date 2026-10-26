// module operators(nota,andab,orab,xorab,xnorab,a,b);
// wire [3:0] a,b;
// wire [3:0] nota,andab,orab,xorab,xnorab;

// assign nota = ~a;
// assign andab = a & b;
// assign orab = a|b;
// assign xorab = a^b;
// assign xnorab = a~^b;
// endmodule


// module operators(nota,andab,orab,xorab,xnorab,a,b);

// input  [3:0] a,b;
// output [3:0] nota,andab,orab,xorab,xnorab;

// assign nota   = ~a;
// assign andab  = a & b;
// assign orab   = a | b;
// assign xorab  = a ^ b;
// assign xnorab = a ~^ b;

// endmodule

// module unary_opts;

// integer a,b,c;
// initial begin
// a = -5;
// b = +6;
// c = -10/6;
// $monitor("time = %0t, a = %0d,b=%0d,c=%0d",$time,a,b,c);
// end
// endmodule


// module unary_opts;

// integer a,b,c;

// initial begin
//     a = -5;
//     b = +6;
//     c = -10/6;
//     $monitor("time=%0t, a=%0d, b=%0d, c=%0d",
//              $time, a, b, c);
// end

// endmodule
// module logical_opts;
// reg [3:0] a,b;
// wire nota,andab,orab,equab;


//   assign nota = ~a;
//     assign andab = a&b;
//     assign orab = a|b;
//     assign equab = (a == b);


// initial begin
//     $monitor("time=%0t, a= %b, b= %b | nota=%b, andab=%b, orab=%b, equab=%0b",$time,a,b,notab,andab,orab,equab);

//    a = 0; b = 5; #10
// #10  a =5; b=0; 


// end
// endmodule

// `timescale 1ns/1ns

// module unary_opts;

// integer a, b;
// wire nota, andab, orab, equab;

// // Continuous assignments
// assign nota  = ~a;
// assign andab = a && b;
// assign orab  = a || b;
// assign equab = (a == b);

// initial begin
//     $monitor("time=%0t, a=%0d, b=%0d | nota=%b, andab=%b, orab=%b, equab=%b",
//              $time, a, b, nota, andab, orab, equab);

//     a = 0;
//     b = 5;
//     #10;

//     a = 5;
//     b = 0;
//     #10;

//     a = 5;
//     b = 5;
//     #10;

//     a = 0;
//     b = 0;
//     #10;

//     $finish;
// end

// endmodule

// `timescale 1ns/1ns

// module unary_opts(nota, andab, orab, equab, a, b);

// input [31:0]integer a, b;
// output nota, andab, orab, equab;

// assign nota  = ~a;
// assign andab = a && b;
// assign orab  = a || b;
// assign equab = (a == b);

// endmodule

// modu oule logical(logeq,logineq,caseeq,caseineq,a,b);
// output logeq,logineq,caseeq,caseineq;
// input [3:0] a,b;

// assign logeq =  (a == b);
// assign logineq = (a != b);
// assign caseeq = (a === b);
// assign caseineq = (a !== b);
// endmodule

module relational_ops(
    input wire [3:0] a,b,x,y,
   otput wire a_leeq_b,
    output wire a_gt_b,
output wire y_gteq_x,
output wire y_lt_x
);

assign a_leeq_b = (a<=b);
assign a_gt_b = (a>b);
assign y_gteq_x = (y>=x);
assign y_lt_x = (y<x);

endmodule




//   module relational_ops(a,b,x,y,a_leeq_b,a_gt_b,y_gteq_x,y_lt_x);
//   input wire [3:0] a,b,x,y;
// output wire a_leeq_b, a_gt_b,y_gteq_x,y_lt_x;


// assign a_leeq_b = (a<=b);
// assign a_gt_b = (a>b);
// assign y_gteq_x = (y>=x);
// assign y_lt_x = (y<x);

//   endmodule













// module shifts(y_logright,y_logleft1,y_logleft2,x);
// output [3:0] y_logright,y_logleft1,y_logleft2;
// input [3:0] x;

// assign y_logright = x>>1;
// assign y_logleft1 = x<<1;
// assign y_logleft2 = x<<2;
// endmodule
