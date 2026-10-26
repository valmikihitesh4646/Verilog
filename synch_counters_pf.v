// // synchrounous counters prepsusion himanshu pandey pdf notes (jk ff ) all initial reset 00 01 10 11
// module synch_counter(q0,q1,clk);   //2-bit synchronous up counter 
// output reg q0,q1;
// input clk;

// wire j1,k1,j0,k0;
// assign j1 = q1 | q0;
// assign k1 = ~q1 | q0;
// assign j0 = 1;
// assign k0 = 1;

// initial begin
    
//     q0 = 0;
//     q1 = 0;
// end

// always @(posedge clk )begin

//     case({j0,k0})

// 2'b00: q0 = q0;
// 2'b01: q0 = 0;
// 2'b10: q0 =1;
// 2'b11: q0 = ~q0;

// endcase
// end

// always @(posedge clk)begin
//    case({j1,k1})
//    2'b00: q1 = q1;
//    2'b01: q1 = 0; 
//     2'b10: q1 =1;
//     2'b11: q1 = ~q1;
//    endcase
    
//     end
// endmodule

// // See in the PDF, second question, which goes from 0 -> 2 -> 3 -> 1 synchronous counter. 
// module synch(q1,q0,clk);
// output reg q1,q0;
// input clk;
// wire t1,t0;
 
//  assign t1 = q1 ~^ q0;
//  assign t0 = q0 ^ q1;

//  always(posedge clk)begin
//  if(t1 = 0)
//  q1 = q1;
//  else 
//  q1 = ~q1;
//   end

//  always(posedge clk)begin
// if(t0 = 0)
// q0 = q0;
// else
// q0 = ~q0;    
//  end
// endmodule


// module synch(q1,q0,clk);
// output reg q1,q0;
// input clk;

// wire t1,t0;

//  assign t1 = q1 ~^ q0;
//  assign t0 = q0 ^ q1;

//  initial begin
//     q1 = 0;
//     q0 = 0;
// end

// always @(posedge clk)begin
//     if(t1 == 0) 
//     q1 = q1;
//     else 
//     q1 = ~q1;
// end

// always @(posedge clk)begin
//     if(t0 == 0) 
//     q0 = q0;
//     else 
//     q0 = ~q0;
// end
// endmodule


// module synch_3bit_up(q2,q1,q0,clk);
// output reg q2,q1,q0;
// input clk;

// wire t2,t1,t0;

// assign t2 = q1 & q0;
// assign t1 = q0;
// assign t0 = 1;

// initial begin
// q2 = 0;
// q1 = 0;
// q0 = 0;

// end

// always @(posedge clk)begin
    
//     if(t2 == 0)
//     q2 <= q2;
//     else
//     q2 <= ~q2;
// end


// always @(posedge clk)begin
    
//     if(t1 == 0)
//     q1 <= q1;
//     else
//     q1 <= ~q1;
// end


// always @(posedge clk)begin
    
//     if(t0 == 0)
//     q0 <= q0;
//     else
//     q0 <= ~q0;
// end
// endmodule

////4-bit synchronous down counter Using T flip-flop 

// module synch_4bitdown(q3,q2,q1,q0,clk);
// output reg q3,q2,q1,q0;
// input clk;

// wire t3,t2,t1,t0;
// assign t3 = ~q1 & ~q2 & ~q0;
// assign t2 = ~q1 & ~q0;
// assign t1 = ~q0;
// assign t0 = 1;

// initial begin
// q3 = 1;
// q2 = 1;
// q1=1;
// q0=1;    
// end

// always @(posedge clk) begin
//     if(t3 == 0)
//     q3 <= q3;
//     else 
//     q3 <= ~q3;
    
// end

// always @(posedge clk) begin
//         if(t2 == 0)
//     q2 <= q2;
//     else 
//     q2 <= ~q2;
    
// end

// always @(posedge clk) begin
    
//         if(t1 == 0)
//     q1 <= q1;
//     else 
//     q1 <= ~q1;
    
// end

// always @(posedge clk) begin
//     if(t0 == 0)
//     q0 <= q0;
//     else 
//     q0 <= ~q0;
        
// end
// endmodule

//0 ->  3 -> 5 -> 6. Sincronous use tff
// module counter(q2,q1,q0,clk);
// output reg q2,q1,q0;
// input clk;

// wire t2,t1,t0;
// assign t2= q1;
// assign t1= 1;
// assign t0= ~q1;

// initial begin
// q2 = 0;
// q1 = 0;
// q0 = 0;
// end


// always @(posedge clk)begin
// if(t2 == 0)
// q2 <= q2;
// else
// q2 <= ~q2;
// end

// always @(posedge clk)begin
//     if(t1 == 0)
// q1 <= q1;
// else
// q1 <= ~q1;
// end

// always @(posedge clk)begin
//     if(t0 == 0)
// q0 <= q0;
// else
// q0 <= ~q0;
// end
// endmodule

//2 bit up down counter using d ff
//s=1 up    and  s=0 downn
// module updowncounter(q1,q0,q1_next,q0_next,clk,s);
// output reg q1,q0;
// output reg q1_next,q0_next;
// input clk,s;
// wire d1,d0;

// assign d1 = ~(s^q1^q0);
// assign d0 = ~q0;

// initial begin
//     q1 =0;
//     q0 =0;
// end


// always @(*) begin
//     case({s,q1,q0})
//     3'b000: 
//     begin
//         q1_next <= 1; 
//    q0_next <= 1; 
//     end

//     3'b001:    begin
//         q1_next <= 0; 
//    q0_next <= 0; 
//     end 

//   3'b010:    begin
//         q1_next <= 0; 
//    q0_next <= 1; 
//     end

//   3'b011:    begin
//         q1_next <= 1; 
//    q0_next <= 0; 
//     end


// 3'b100:    begin
//         q1_next <= 0; 
//    q0_next <= 1; 
//     end

//  3'b101:    begin
//         q1_next <= 1; 
//    q0_next <= 0; 
//     end

// 3'b110:    begin
//         q1_next <= 1; 
//    q0_next <= 1; 
//     end

// 3'b111:    begin
//         q1_next <= 0; 
//    q0_next <= 0; 
// end 
//     endcase
// end
// always @(posedge clk) begin
//     q1 <= q1_next;
//     q0 <= q0_next;
// end
// endmodule

// //ring counter
// module ringcounter(q0,q1,q2,q3,clk,clear,preset);
// output reg  q0,q1,q2,q3;
// input clk,clear,preset;
// wire d0,d1,d2,d3;

// assign d0 = q3;
// assign d1 = q0;
// assign d2 = q1;
// assign d3 = q2;
// initial begin
//     q0 = 0;
//     q1 = 0;
//     q2 = 0;              //  Without using pre-set and clear Input pins .  
//     q3 = 1;   
// end             //There are two ways to design the circuit:
// // To initialize all Q0, Q1, Q2, and Q3 to 0001 /// Use clear and reset inputs


// always @(posedge clk or posedge clear)begin
    
// if(clear)
// q0 <= 0;
// else 
// q0 <= d0;
// end


// always @(posedge clk or posedge clear)begin
    
// if(clear)
// q1 <= 0;
// else 
// q1 <= d1;
// end


// always @(posedge clk or posedge clear)begin
    
// if(clear)
// q2 <= 0;
// else 
// q2 <= d2;
// end


// always @(posedge clk or posedge preset)begin
    
// if(preset)
// q3 <= 1;
// else 
// q3 <= d3;
// end
// endmodule


// //ring countermethod 2
// module ringcounter(q0,q1,q2,q3,clk);
// output reg  q0,q1,q2,q3;
// input clk;
// wire d0,d1,d2,d3;

// assign d0 = q3;
// assign d1 = q0;
// assign d2 = q1;
// assign d3 = q2;
// initial begin
//     q0 = 0;
//     q1 = 0;
//     q2 = 0;              //  Without using pre-set and clear Input pins .  
//     q3 = 1;   
// end             //There are two ways to design the circuit:
// // To initialize all Q0, Q1, Q2, and Q3 to 0001 /// Use clear and reset inputs


// always @(posedge clk)begin
// q0 <= d0;
// end


// always @(posedge clk )begin

// q1 <= d1;
// end


// always @(posedge clk )begin

// q2 <= d2;
// end


// always @(posedge clk )begin
    
// q3 <= d3;
// end
// endmodule


// //Ring counter using clear and preset 
// module ringcounter(q0,q1,q2,q3,clk,clear,preset);
// output reg q0,q1,q2,q3;
// input clk,clear,preset;
//  wire d0,d1,d2,d3;

// assign d0 = q3;
// assign d1 = q0;
// assign d2 = q1;
// assign d3 = q2;

// always @(posedge clk or posedge clear)begin
    
// if(clear)
// q0 <= 0;
// else 
// q0 <= d0;
// end


// always @(posedge clk or posedge clear)begin
    
// if(clear)
// q1 <= 0;
// else 
// q1 <= d1;
// end


// always @(posedge clk or posedge clear)begin
    
// if(clear)
// q2 <= 0;
// else 
// q2 <= d2;
// end


// always @(posedge clk or posedge preset)begin
//     ss
// if(preset)
// q3 <= 1;
// else 
// q3 <= d3;
// end
// endmodule


// johnson counter//
////Without using clear input 
module johnsoncounter(q0,q1,q2,q3,clk,clear);
output reg q0,q1,q2,q3;
input clk,clear;
wire d0,d1,d2,d3;

assign d0 = ~q3;
assign d1 = q0;
assign d2 = q1;
assign d3 = q2;
// initial begin
//     q0 = 0;
//      q1 = 0;
//       q2 = 0;
//        q3 = 0;

// end

always @(posedge clk or posedge clear)begin
    if(clear)
    q0 <= 0;
    else
    q0 <= d0;
end

always @(posedge clk or posedge clear)begin
   if(clear)
   q1 <= 0;
   else
    q1 <= d1;
end

always @(posedge clk  or posedge clear)begin
    if(clear)
   q2 <= 0;
   else
    q2 <= d2;
end 

always @(posedge clk  or posedge clear)begin
    if(clear)
   q3 <= 0;
   else
    q3 <= d3;
end
endmodule
