// `timescale 1ns/1ns
// `include "exercise2.v"
// module exercise2_tb;

// reg a,b;
// wire and_out,not_out,or_out;

// my_and u1(and_out,a,b);
// my_not u3(not_out,a);
// my_or u2(or_out,a,b);

// initial begin  
//     $dumpfile("exercise2.vcd");
// $dumpvars(0,exercise2_tb);
// $monitor("a = %b and b = %b , andout=%b, notout = %b,orout = %b",a,b,and_out,not_out,or_out);

// a = 0; b = 0; #5;

// a = 0; b = 1; #5;
// a = 1; b = 0; #5;
// a = 1; b = 1; #5;

// $finish;


// end 

// endmodule

//question2 testbench


// `timescale 1ns/1ns
// `include "exercise2.v"
// module exercise2_tb;

// reg a,b;
// wire y;

// my_xor u1(y,a,b);



// initial begin  
//     $dumpfile("exercise2.vcd");
// $dumpvars(0,exercise2_tb);
// $monitor("a = %b and b = %b  and xor = %b",a,b,y);

// a = 0; b = 0; #5;

// a = 0; b = 1; #5;
// a = 1; b = 0; #5;
// a = 1; b = 1; #5;

// $finish;


// end 

// // endmodule
     

// // question3
     
// `timescale 1ns/1ns
// `include "exercise2.v"
// module exercise2_tb;
// reg a,b,c;
// wire sum,cout;
// full_adder_1bit u1(sum,cout,a,b,c);
// initial begin  
//     $dumpfile("exercise2.vcd");
// $dumpvars(0,exercise2_tb);
// $monitor("a = %b and b = %b and c = %b |sum = %b & carry = %b",a,b,c,sum,cout);

// a = 0; b = 0; c = 0; #5;
// a = 0; b = 0; c = 1; #5;
// a = 0; b = 1; c = 0; #5;
// a = 0; b = 1; c = 1; #5;
// a = 1; b = 0; c = 0; #5;
// a = 1; b = 0; c = 1; #5;
// a = 1; b = 1; c = 0; #5;
// a = 1; b = 1; c = 1; #5;
//   #60    $finish;
// end 
// endmodule

//SR LATCH QUESTION

// `timescale 1ns/1ns
// `include "exercise2.v"
// module exercise2_tb;

// reg s,r;
// wire q,qbar;
// sr_latch u1(q,qbar,s,r);
// initial begin  
//     $dumpfile("exercise2.vcd");
// $dumpvars(0,exercise2_tb);
// $monitor("s = %b and r = %b | q=%b and qbar  = %b, time = %0t",s,r,q,qbar,$time);
// s = 0; r = 0; #5;
// s = 0; r = 1; #5;
// s = 1; r = 0; #5;
// s = 1; r = 1; #5;
// $finish;
// end 
// endmodule


//sr latch
`timescale 1ns/1ns
`include "exercise2.v" 

 module exercise2_tb;
reg R, S;
    wire Q, QBAR;

    // Instantiate RS Latch
    rs_latch u1(Q, QBAR, R, S);

    initial begin   
          $dumpfile("exercise2.vcd");
 $dumpvars(0,exercise2_tb);

       $monitor("R=%b S=%b | Q=%b QBAR=%b, Time : %0t", R, S, Q, QBAR,$time);

        R = 0; S = 0; #5;
        R = 0; S = 1; #5;
        R = 1; S = 0; #5;
        R = 1; S = 1; #5;

        $finish;

    
    end
    endmodule