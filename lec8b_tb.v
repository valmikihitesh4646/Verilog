     
// `timescale 1ns/1ns
// `include "lec8b.v" 

//  module lec8b_tb;
//   reg[3:0] a,b;
//   wire [3:0] nota,andab,orab,xorab,xnorab;
// operators uut(
//     .nota(nota),
//     .andab(andab),
//     .orab(orab),
//     .xorab(xorab),
//     .xnorab(xnorab),
//     .a(a),
//     .b(b)
// );

//   initial begin
//     $monitor("time = %0t,a=%b,b = %b | ~a=%b, a&b=%b,a|b=%b, a^b=%b, a~^b=%b",$time,a,b,nota,andab,orab,xorab,xnorab);

// a = 4'b1010;  b = 4'b1111; #20;
// a = 4'b1000;  b = 4'b1001;  #20;

//   end 


//      initial begin
//      $dumpfile("lec8b.vcd");
//      $dumpvars(0,lec8b_tb);
//      end
//  endmodule

//  `timescale 1ns/1ns
// `include "lec8b.v"

// module lec8b_tb;

// reg [3:0] a,b;
// wire [3:0] nota,andab,orab,xorab,xnorab;

// operators uut(
//     .nota(nota),
//     .andab(andab),
//     .orab(orab),
//     .xorab(xorab),
//     .xnorab(xnorab),
//     .a(a),
//     .b(b)
// );

// initial begin
//     $monitor("time=%0t a=%b b=%b | ~a=%b a&b=%b a|b=%b a^b=%b a~^b=%b",
//              $time,a,b,nota,andab,orab,xorab,xnorab);

//     a = 4'b1010;
//     b = 4'b1111;

//     #10;

//     a = 4'b1000;
//     b = 4'b1001;

//     #10;

//     $finish;
// end

// initial begin
//     $dumpfile("lec8b.vcd");
//     $dumpvars(0,lec8b_tb);
// end

// endmodule


// `timescale 1ns/1ns
// `include "lec8b.v"

// module lec8b_tb;

// reg [31:0]  a, b;
// wire nota, andab, orab, equab;

// // Instantiate the design module
// unary_opts uut (
// //     .nota(nota),
// //     .andab(andab),
// //     .orab(orab),
// //     .equab(equab),
// //     .a(a),
// //     .b(b)
// // );

// // initial begin
// //     $monitor("time=%0t, a=%0d, b=%0d | nota=%b, andab=%b, orab=%b, equab=%b",
// //              $time, a, b, nota, andab, orab, equab);

// //     a = 0;
// //     b = 5;
// //     #10;

// //     a = 5;
// //     b = 0;
// //     #10;

// //     a = 5;
// //     b = 5;
// //     #10;

// //     a = 0;
// //     b = 0;
// //     #10;

// //     $finish;
// // end

// // initial begin
// //     $dumpfile("lec8b.vcd");
// //     $dumpvars(0, lec8b_tb);
// // end

// // endmodule

// `timescale 1ns/1ns
// `include "lec8b.v"
// module lec8b_tb;
// reg [3:0] a,b;
// wire logeq,logineq,caseeq,caseineq;
// logical uut(.a(a), .b(b),.logeq(logeq), .logineq(logineq), .caseeq(caseeq), .caseineq(caseineq) );
// initial begin
// $monitor("time = %0t, a=%0b b=%0b| logeq =%0b loginequ=%0b and case equ =%0b  case inequ=%0b",$time,a,b,logeq,logineq,caseeq,caseineq);
//    a = 4'b1010; b = 4'b1010; #10;
//     a = 4'b1x10; b = 4'b1010; #10;
//     a = 4'b1x10; b = 4'b1x10; #10;
// end
// initial begin
//      $dumpfile("lec8b.vcd");
//      $dumpvars(0,lec8b_tb);
// end
// endmodule



`timescale 1ns/1ns
`include "lec8b.v"
module lec8b_tb;

reg [3:0] a,b,x,y;
wire a_leeq_b,a_gt_b,y_gteq_x,y_lt_x;
 relational_ops uut(.a(a), .b(b), .x(x), .y(y), .a_leeq_b(a_leeq_b), .a_gt_b(a_gt_b), .y_gteq_x(y_gteq_x), .y_lt_x(y_lt_x)  );


initial begin
$monitor("time = %0t, a=%d,b=%d, x=%b, y=%b | a<=b = %b| a>b =%b| y>=x=%b| y<x=%b", $time,a,b,x,y,a_leeq_b,a_gt_b,y_gteq_x,y_lt_x);
// Test Cases
a = 4; b = 3; x = 4'b1010; y = 4'b1101; #10; // Initial case
a = 2; b = 5; x = 4'b1110; y = 4'b1001; #10; // Another case
a = 6; b = 6; x = 4'b0001; y = 4'b0100; #10; // Edge case
a = 4'b1x01; b = 4'b1010; x = 4'bz01; y = 4'b0100; #10; // Edge case
end



initial begin
     $dumpfile("lec8b.vcd");
     $dumpvars(0,lec8b_tb);
end
endmodule



// `timescale 1ns/1ns
// `include "lec8b.v"
// module lec8b_tb;

// reg [3:0] x;
// wire [3:0] y_logright,y_logleft1,y_logleft2;
// shifts uut(.y_logright( y_logright), .y_logleft1(y_logleft1), .y_logleft2(y_logleft2), .x(x) );


// initial begin
// $monitor("time = %0t,x=%0b|y_logright=%b|y_logleft1=%b| y_logleft2=%b  ", $time,x,y_logright,y_logleft1,y_logleft2);

// x =4'b1100;    #10;
// x = 4'b0110;  #10;
// x = 4'b1001;   #10;

// end



// initial begin
//      $dumpfile("lec8b.vcd");
//      $dumpvars(0,lec8b_tb);
// end
// endmodule