// // basic counter 
// module counterup (count,clk,reset);
// output [7:0] count;
// input clk,reset;
// reg [7:0] count_temp;

// always @(posedge clk) 
// if(reset)
// count_temp <= 8'b0;
// else
// count_temp <= count_temp + 1;
// assign count = count_temp;
// endmodule

// module counter(count,clk,reset);
// output [7:0] count;
// input clk;
// input reset;

// reg [7:0] count_temp;

// always @(posedge clk or posedge reset)
// if(reset | count_temp >= 8'd46)
// count_temp <= 8'd0;
// else 
// count_temp = count_temp +1;
// assign count = count_temp;

// endmodule


// module counter(count,clk,reset);
// output [7:0] count;
// input clk;
// input reset;

// reg [7:0] count_temp;

// always @(posedge clk or posedge reset)
// begin
//     if(reset)
//         count_temp <= 8'd10;
//     else if(count_temp >= 8'd40)
//         count_temp <= 8'd10;
//     else
//         count_temp <= count_temp + 1;
// end
// endmodule





// module counter(count, clk, rst, data);

// input [7:0] data;
// input clk, rst;
// output [7:0] count;

// reg [7:0] count_temp;

// always @(posedge clk)
// begin
//     if(rst | count_temp >= 8'd40 | count_temp < 8'd10)
//         count_temp <= 8'd10;
//     else
//         count_temp <= count_temp + 1;
// end

// assign count = count_temp;

// endmodule

// module freq_div_4(clk_out,clk,reset);
// output reg clk_out;
// input clk;
// input reset;
// reg clk_div_2;

// always @(posedge clk or posedge reset)begin

// if(reset)
// clk_div_2 <= 0;
// else
// clk_div_2 <= ~clk_div_2;
// end

// always @(posedge clk_div_2 or posedge reset)begin
//     if(reset)
//     clk_out <= 0;
// else 
// clk_out <= ~clk_out;
// end
// endmodule

// module asynch_2bit(q0,q1,clk,reset);   // down counter 2 bit asynch
// output reg q0,q1;
// input clk;
// input reset;


// always @(posedge clk or posedge reset)begin
//     if(reset)
//     q0 <= 0;
//     else
//     q0 <= ~q0;

// end

// always @(posedge q0 or posedge reset)begin
//     if(reset)
//     q1 <= 0;
// else
// q1 <= ~q1;

// end
// endmodule




// module asynch_2bit(q0,q1,clk,reset);   // down counter 2 bit asynch
// output reg q0,q1;
// input clk;
// input reset;


// always @(negedge clk or posedge reset)begin
//     if(reset)
//     q0 <= 0;
//     else
//     q0 <= ~q0;

// end

// always @(negedge q0 or posedge reset)begin
//     if(reset)
//     q1 <= 0;
// else
// q1 <= ~q1;

// end
// endmodule

// module asynch_2bit(q0,q1,clk,reset);   // down counter 2 bit asynch
// output reg q0,q1;
// input clk;
// input reset;

// //  this is the case of (-,-)  down count
// always @(negedge clk or posedge reset)begin
//     if(reset)
//     q0 <= 0;
//     else
//     q0 <= ~q0;

// end

// always @(negedge q0 or posedge reset)begin
//     if(reset)
//     q1 <= 0;
// else
// q1 <= ~q1;

// end
// endmodule

// //  this is the case of (+,+)down count
// module asynch_2bit(q0,q1,clk,reset);
// output reg q0,q1;
// input clk,reset;

// always @(posedge clk or posedge reset)begin
//     if(reset)
//     q0 <= 0;
// else 
// q0 <= ~q0; 
// end

// always @(posedge q0 or posedge reset)begin
    
// if(reset)
// q1 <= 0;
// else
// q1 <= ~q1;

// end
// endmodule

//3-bit Async Binary UP//
// module bit3_up_asynch(q2,q1,q0,clk,reset);
// output reg q2,q1,q0;
// input clk;
// input reset;                                    //// jk and t ff same code

// always @(posedge clk or posedge reset)begin
// if(reset)
// q0 <= 0;
// else
// q0 <= ~q0; 
// end

// always @(negedge q0 or posedge reset)begin
// if(reset)
// q1 <= 0;
// else
// q1 <= ~q1;
// end

// always @(negedge q1 or posedge reset)begin
// if(reset)
// q2 <= 0;
// else
// q2<= ~q2;
// end
// endmodule


//3-bit Async Binary UP  and down//   dff
// module bit3upasynchdff(q2,q1,q0,clk,reset);
// output reg q2,q1,q0;               
// wire d2,d1,d0;
// input clk,reset;

// assign d2 = ~q2;
// assign d1 = ~q1;
// assign d0 = ~q0;


// always @(posedge clk or posedge reset) begin
    
// if(reset)
// q0 <= 0;
// else
// q0 <= d0;
// end

// always @(posedge q0  or posedge reset)begin
//     if(reset)
//     q1 <= 0;
//     else
//     q1 <= d1;

// end

// always @(posedge q1  or posedge reset)begin
//     if(reset)
//     q2 <= 0;
//     else
//     q2 <= d2;
// end
// endmodule

//4-bit Async Binary UP
// module counter_4bit_asynch_up(q3,q2,q1,q0,clk,reset);              // tff and jk ff  both are same
// output reg q3,q2,q1,q0;
// input clk,reset;

// always @(posedge clk or posedge reset)begin
//     if(reset)
//     q0 <= 0;
//     else 
//     q0 <= ~q0;
// end

// always @(negedge q0 or posedge reset)begin
//     if(reset)
//     q1 <= 0;
//     else 
//     q1 <= ~q1;
//     end

// always @(negedge q1 or posedge reset)begin
//     if(reset)
//     q2 <= 0;
//     else 
//     q2 <= ~q2;
// end

// always @(negedge q2 or posedge reset)begin
//     if(reset)
//     q3 <= 0;
//     else 
//     q3 <= ~q3;
// end
// endmodule

//4BIT async up counter only d ff
// module counter_4bit_asynch_up(d3,d2,d1,d0,q3,q2,q1,q0,clk,reset);
// output reg q3,q2,q1,q0;
// input clk;
// input reset;
// output d3,d2,d1,d0;

// assign d3 = ~q3;
// assign d2 = ~q2;
// assign d1 = ~q1;
// assign d0 = ~q0;
 
// always @(posedge clk or posedge reset)begin
//     if(reset)
//     q0 <= 0;
//     else 
// q0 <= d0;
// end

 
// always @(negedge q0 or posedge reset)begin
//     if(reset)
//     q1 <= 0;
//     else 
// q1 <= d1;
// end


 
// always @(negedge q1 or posedge reset)begin
//     if(reset)
//     q2 <= 0;
//     else 
// q2 <= d2;
// end

 
// always @(negedge q2 or posedge reset)begin
//     if(reset)
//     q3 <= 0;
//     else 
// q3 <= d3;
// end
// endmodule


// //4-bit Async Binary down counter
// module counter_4bit_asynch_down(q3,q2,q1,q0,clk,reset);              // tff and jk ff  both are same
// output reg q3,q2,q1,q0;
// input clk,reset;

// always @(posedge clk or posedge reset)begin
//     if(reset)
//     q0 <= 0;
//     else 
//     q0 <= ~q0;
// end

// always @(posedge q0 or posedge reset)begin
//     if(reset)
//     q1 <= 0;
//     else 
//     q1 <= ~q1;
//     end

// always @(posedge q1 or posedge reset)begin
//     if(reset)
//     q2 <= 0;
//     else 
//     q2 <= ~q2;
// end

// always @(posedge q2 or posedge reset)begin
//     if(reset)
//     q3 <= 0;
//     else 
//     q3 <= ~q3;
// end
// endmodule


// NON-BINARY asynch down counter  mod 5 counter

// module mod5_downcounter(preset,q0,q1,q2,clk);
// output reg q0,q1,q2;
// output preset;
// input clk;
// wire preset;
// assign preset = ~q2 & ~q0;

// always @(posedge clk ot posedge preset)begin
//    if(preset)
//    q0 <= 1;
// else
//    q0 <= ~q0; 
// end


// always @(posedge q0 or posedge preset)begin
//    if(preset)
//    q1 <= 1;
//    else
//     q1 <= ~q1;
// end


// always @(posedge q1 or posedge preset)begin
//     if(preset)
//     q2 <= 1;
//     else
//     q2 <= ~q2;

// end
// endmodule


// // NON-BINARY asynch down counter  mod 5 counter all set at beginning
// module mod5_downcounter(q2, q1, q0, clk, preset);

// output reg q2, q1, q0;
// output preset;
// input clk;

// assign preset = ~q2 & ~q0;


// // Initial state = 111
// initial begin 
//     q2 = 1;
//     q1 = 1;
//     q0 = 1;
// end


// // Q0
// always @(posedge clk or posedge preset)
// begin
//     if (preset)
//         q0 <= 1;
//     else
//         q0 <= ~q0;
// end


// // Q1
// always @(posedge q0 or posedge preset)
// begin
//     if (preset)
//         q1 <= 1;
//     else
//         q1 <= ~q1;
// end


// // Q2
// always @(posedge q1 or posedge preset)
// begin
//     if (preset)
//         q2 <= 1;
//     else
//         q2 <= ~q2;
// end

// endmodule

// NON-BINARY asynch down counter  mod 5 counter all reset (000)at beginning
// module mod5counter(q2,q1,q0,clear,clk);
// output reg q2,q1,q0;
// input clk;
// output clear;
// assign clear = ~q2 & q1 & q0;
// initial begin
//     q0 = 0;
//     q1 = 0;
//     q2 = 0;

// end

// always @(posedge clk or posedge clear)begin
//     if(clear)
//     q0 <= 0;
//     else
//     q0 <= ~q0;

// end

// always @(posedge q0 or posedge clear)begin
//     if(clear)
//     q1 <= 0;
//     else
//     q1 <= ~q1;

// end

// always @(posedge q1 or posedge clear)begin
//     if(clear)
//     q2 <= 0;
//     else
//     q2 <= ~q2;

// end
// endmodule


// NON-BINARY ASYNCHRONOUS DOWN COUNTER
// MOD-5 COUNTER
// Initial state = 000
// Active-HIGH CLEAR

module mod5counter(q2,q1,q0,clear,clk);

output reg q2,q1,q0;

input clk;

output clear;

assign clear = ~q2 & q1 & q0;   // Detect 011


initial begin
    q0 = 0;
    q1 = 0;
    q2 = 0;
end


// Q0
always @(posedge clk or posedge clear)
begin
    if(clear)
        q0 <= 0;
    else
        q0 <= ~q0;
end


// Q1
always @(posedge q0 or posedge clear)
begin
    if(clear)
        q1 <= 0;
    else
        q1 <= ~q1;
end


// Q2
always @(posedge q1 or posedge clear)
begin
    if(clear)
        q2 <= 0;
    else
        q2 <= ~q2;
end

endmodule