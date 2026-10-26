// // module questions;

// // reg [9:0] p;

// // initial begin

// // p ={2'bx1,3'b101,2'b10,{2{1'b1}}};

// // #5;
// // $display(" p = %0b",p);
// //    #50;   $finish;
// // end
// // endmodule

 
//  module ques3;
//  reg [1:0] m,n;
//  reg [1:0] p;

//  initial begin
    
// m = 2'b10;
// n = 2'b1x;
// p = (m<n) ? 2'b01 : 2'b11;
// #5;
 



// $display("m = %0b | n = %0b | p = %0b",m,n,p);


// $finish;
//  end
//  endmodule

//ques4
// module ques4;
// reg [4:0] m,n;
// reg x,y;
// initial begin
// m = 5'b10x1z;
// n = 5'b10x1z;
// x = (m==n);
// y=(m===n);
// #55;
// $display("m = %b, n=%b, (m==n): %b, (m===n):%b",m,n,x,y);
// $finish;
// end
// endmodule

//ques5
module ques5;
reg [3:0] a,b;
reg [3:0] result;

initial begin
a = 4'b0101;
b = 4'b1100;
result = a | b ;

#44;
$display("a = %0b and b = %0b and result = %0b",a,b,result);
$finish;



end
endmodule