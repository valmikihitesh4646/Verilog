// module module2();
// parameter latency = 20;

// parameter delta = 2;

// reg [7:0] a,b,c,e,f;
//  initial begin 
//     $monitor("a = %0b | b = %0b | c = %0b | e = %0b |  f = %0b at time=%0t",a,b,c,e,f,$time); 
//  end
//  initial begin 
//     a=0;

//     #10 b=1;
//     #(latency) c =a+b;
//     #(latenct+delta) e = 2;
//     #c f=4;
//     #(4:5:6) c=e-f;
//  end 
//  endmodule 

// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

// reg [7:0] in,data;
// reg lock,enable;
// wire [7:0] buffer,out;

// simple_if_statements uut(.lock(lock), .enable(enable), .data(data), .in(in), .buffer(buffer), .out(out)); 
// initial begin
// $display("test for simple if statements");
// $display("time\tlock\tenable\tdata\tin\tbuffer\tout");

// lock = 1; enable =0; data = 8'hAF; in =8'hFF;

// #10 $display("%0t\t%b\t%b\t%h\t%h\t%h\t%h",$time,lock,enable,data,in,buffer,out);


// #50  $finish;
// end     


// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule









// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

// reg [1:0] alu_control;
// reg  x,n,z;
// wire [7:0] y;

// nested_if_else_statements uut(.alu_control(alu_control), .x(x), .n(n), .z(z), .y(y));
// initial begin
// $display("test for nested if statements");
// $display("time\talu_control\tx\tn\tz\ty");

//  $monitor("time = %0t, alu_control=%0d, x=%0h, z=%0h, y=%0h",$time,alu_control,x,n,z,y);



// alu_control =1;x=8'h10;n=8'h20;z=8'h00;
// #10;
// alu_control=2;x=8'h50;n=8'h00;z=8'h10;

// #10;
// // alu_control=3,x,n,z,y
// // #10

// $finish;

// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule


// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

// reg [3:0] value;
// wire result;

// case_examples uut(.value(value), .result(result));

// initial begin


// $display("testing multiple cases");
// $display("time\tvalue\tresult");

// value = 4'b101x; #10             $display("%0t\t%b\t%b",$time,value,result);
// value = 4'b100x; #10             $display("%0t\t%b\t%b",$time,value,result);
// value = 4'b0x01; #10             $display("%0t\t%b\t%b",$time,value,result);
// value = 4'bx001; #10             $display("%0t\t%b\t%b",$time,value,result);

// $finish;

// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule

// parallel excution




// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

// reg x,y,z,w;

// parallel_execution uut();

//  initial begin

//    $monitor("time = %0t, x=%0b, y=%0b, z=%0b, w=%0b",
//              $time, uut.x, uut.y, uut.z, uut.w);#50;
// $finish;

// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule



// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

// wire[N-1:0] out;

// reg [N-1:0] i0,i1;
// bitwise_xor #(.N(N) uut(out,i0,i1));

//  initial begin

//    $monitor($time,"i0=%0b, i1=%0b, out=%0b",i0,i1,out);

// i0 = 4'b0000; i1 = 4'b0000; #10; // Test with all 0s
// i0 = 4'b1010; i1 = 4'b0101; #10; // Test with alternating bits
// i0 = 4'b1111; i1 = 4'b0000; #10; // Test with all 1s and 0s
// i0 = 4'b1100; i1 = 4'b1010; #10; // Random test case

// $finish;

// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule


////module2 vid3 only behavioural lelvel modelling

// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

// reg s0,s1;
// reg i0,i1,i2,i3;
// wire y;

// mux4to1 uut(y,i0,i1,i2,i3,s1,s0 );
// initial begin
     
// $monitor("time = %0t, i0=%0b, i1=%0b, i2=%0b, i3=%0b, s1=%0b, s0=%0b, y=%0b",$time,i0,i1,i2,i3,s1,s0,y);

// i0=0; i1=0; i2=0; i3=0; s1=0; s0=0; 

// #10 i0=1; s1=0; s0=0; 
// #10 i1=1; s1=0; s0=1; 
// #10 i2=1; s1=1; s0=0; 
// #10 i3=1; s1=1; s0=1; 

// #20
// i0=0; i1=0; i2=0; i3=0; s1=0; s0=0; 

// #10 $finish;
// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule


// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

// reg clock,clear;
// wire [3:0] q;

// counter uut(.q(q), .clock(clock), .clear(clear) );
// initial 
// forever #5 clock = ~clock;

// initial begin
     
// $monitor("time = %0t, clock =%0b, clear=%0b, q=%0b",$time,clock,clear,q);

// clock =0;   // initioal at t=0
// clear =1;  #10;
//  clear = 0; #50;

//  clear =1; #10;
//  clear =0; #50;
// $finish;
// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule

// 2*4 decoder testbechh

// `timescale 1ns/1ns
// `include "module2.v"

// 2 to 4 decoder testbench 

// module module2_tb;
// wire [3:0] y;
// reg en;
// reg [1:0] i;

// decoder2to4 uut(.y(y), .i(i), .en(en));
// initial begin
// $monitor("time=%0t | en=%0b | i=%0b | y=%b",$time,en,i,y);

// en = 1;  i=2'b00; #10;
// en = 1;  i=2'b01; #10;
// en = 1;  i=2'b10; #10;
// en = 1;  i=2'b11; #10;
// en = 0;  i=2'b10; #10;

// $finish;
// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule

// 3 to 8 decoder testbench

// `timescale 1ns/1ns
// `include "module2.v"

// module module2_tb;
// wire [7:0] y;
// reg en;
// reg [2:0] i;

// decoder3to8 uut(.y(y), .i(i), .en(en));
// initial begin
// $monitor("time=%0t | en=%0b | i=%b | y=%b",$time,en,i,y);

// en = 1;  i = 3'b111; #10;
// en = 1;  i = 3'b110; #10;
// en = 1;  i = 3'b101; #10;
// en = 1;  i = 3'b100; #10;
// en = 1;  i = 3'b011; #10;
// en = 1;  i = 3'b010; #10;
// en = 1;  i = 3'b001; #10;
// en = 1;  i = 3'b000; #10;
// en=0; i=3'b111; #10;


// $finish;
// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule

// 4*2 encoder  (testbench)

// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;
// reg [3:0] i;
//      wire v;
//      wire [1:0] y;

// encoder_4to2 uut(.y(y), .i(i), .v(v));
// initial begin

     
// $monitor("time=%0t | i=%b | v=%0b | y=%b",$time,i,v,y);

// i = 4'b0000; #10;
// i = 4'b0001; #10;
// i = 4'b0010; #10;
// i = 4'b0100; #10;
// i = 4'b1000; #10;
// i = 4'b1100; #10;
// i = 4'b1010; #10;


// $finish;
// end



////data flow level modelling // 4bit magnitude comparator


// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

// reg [3:0] a;
// reg [3:0] b;
// wire gr,eq,les;

// comparator_4bit uut(.gr(gr), .eq(eq), .les(les), .a(a), .b(b));

// initial begin
// $monitor("time = %0t | gr = %0b | eq = %0b | less = %0b",$time,gr,eq,les);

// a = 4'b1111; b=4'b1010; #10;
//     $display("time=%0t | a=%b | b=%b | gr=%b | eq=%b | less=%b",
//              $time,a,b,gr,eq,les);
// a = 4'b1011; b=4'b1101; #10;
//     $display("time=%0t | a=%b | b=%b | gr=%b | eq=%b | less=%b",
//              $time,a,b,gr,eq,les);
// a = 4'b1001; b=4'b1110; #10;
//     $display("time=%0t | a=%b | b=%b | gr=%b | eq=%b | less=%b",
//              $time,a,b,gr,eq,les);
// a = 4'b0001; b=4'b0110; #10;
//     $display("time=%0t | a=%b | b=%b | gr=%b | eq=%b | less=%b",
//              $time,a,b,gr,eq,les);
// a = 4'b1001; b=4'b1001; #10;   // 
//     $display("time=%0t | a=%b | b=%b | gr=%b | eq=%b | less=%b",
//              $time,a,b,gr,eq,les);
//              //this is the monitor so it changes only when it observes the hange so here  we can maxx get only 3 outputs


//  $finish;   #90;

// end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule

//// 4 bit ALU  behavioural modelling style

// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;


// reg  [3:0] a;
// reg  [3:0] b;
// reg  [3:0] opcode;

// wire [3:0] x;
// wire [3:0] y;


// ALU_4bit uut(.x(x), .y(y), .a(a), .b(b), .opcode(opcode));

// initial begin
// $monitor("time = %0t | a = %0b |b = %b |x = %b |y = %b | opcode = %0b ",$time,a,b,x,y,opcode);     

// a = 4'b1010; b=4'b1111;  opcode = 4'b1101;                   #10;
// a = 4'b1000; b=4'b0011;  opcode = 4'b1100;                   #10;
// a = 4'b1011; b=4'b1100;  opcode = 4'b1111;                   #10;

// $finish;

// end


// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule
  


//   // module tb_while_loop_find_b it;
// `timescale 1ns/1ns
// `include "module2.v"
// module module2_tb;

//     initial begin
//        $monitor("Testing While Loop for Finding First '1' Bit");
//        #20 $finish; // Simulation ends after 20 time units
//    end

// initial begin
//      $dumpfile("module2.vcd");
//      $dumpvars(0,module2_tb);
// end
// endmodule
  


`timescale 1ns/1ns
`include "module2.v"
module module2_tb;

   // module tb_for_loop_array_in it;
    initial begin
        $monitor("Testing For Loop Array Initialization");
        #10 $finish;
    end


    initial begin
     $dumpfile("module2.vcd");
     $dumpvars(0,module2_tb);
end
endmodule
  
