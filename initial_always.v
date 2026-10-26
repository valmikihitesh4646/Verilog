// module stimulus;
// reg x,y,a,b,m;

// initial  m = 1'b0;

// initial $display("single line  initiate statement at time  %0t", $time);

// initial 
// begin 
// $display("time :  %0t   =>  m = %0d",$time,m);
// $display("time is %0t   =>  a =%0d",$time,a);

// #5  a = 1'b1;

// $display("time is %0t  =>  a is  %0d",$time,a);
// $display("time is %0t  =>  b is %0d",$time,b);

// #25   b = 1'b0;
 
// $display("time at %0t  =>  b = %0d",$time,b);
// end


// initial 
// begin
//     $display("time at %0t  =>  x = %0d",$time,x);

// #10  x = 1'b0;
// $display("time at %0t  =>  x = %0d",$time,x);
// $display("time at %0t  =>  y = %0d",$time,y);

// #25 y = 1'b1;

// $display("time at %0t  =>  b = %0d",$time,y);

// end


// initial 

// #50   $finish;

// endmodule



module clock_gen(clock);    // modulename   clock generate(functioncalling type in c )

output clock;    // we are tellin that oput is clock
reg c;      //c is a variable

initial 
c = 1'b0;    //clock starts with a valuue of 0
 //toggle to every 5 ns 

#5  c = ~c;

assign clock = c;

initial 
#100  $finish;
endmodule 
