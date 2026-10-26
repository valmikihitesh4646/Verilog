// // // Digital Dice

// // module digital_dice(q2, q1, q0, clk, reset, enable);

// // output reg q2, q1, q0;
// // input clk, reset, enable;

// // always @(posedge clk or posedge reset) begin

// //     if (reset) begin
// //         q2 <= 1'b0;
// //         q1 <= 1'b0;
// //         q0 <= 1'b1;
// //     end

// //     else if (enable) begin

// //         case ({q2, q1, q0})

// //             3'b001: begin
// //                 q2 <= 1'b0;
// //                 q1 <= 1'b1;
// //                 q0 <= 1'b0;
// //             end

// //             3'b010: begin
// //                 q2 <= 1'b0;
// //                 q1 <= 1'b1;
// //                 q0 <= 1'b1;
// //             end

// //             3'b011: begin
// //                 q2 <= 1'b1;
// //                 q1 <= 1'b0;
// //                 q0 <= 1'b0;
// //             end

// //             3'b100: begin
// //                 q2 <= 1'b1;
// //                 q1 <= 1'b0;
// //                 q0 <= 1'b1;
// //             end

// //             3'b101: begin
// //                 q2 <= 1'b1;
// //                 q1 <= 1'b1;
// //                 q0 <= 1'b0;
// //             end

// //             3'b110: begin
// //                 q2 <= 1'b0;
// //                 q1 <= 1'b0;
// //                 q0 <= 1'b1;
// //             end

// //             default: begin
// //                 q2 <= 1'b0;
// //                 q1 <= 1'b0;
// //                 q0 <= 1'b1;
// //             end

// //         endcase
// //     end

// // end

// // endmodule

// // Digital Dice

// module digital_dice(q2, q1, q0, clk, reset, enable);

// output reg q2, q1, q0;
//  input clk, reset, enable;

//  always @(posedge clk or posedge reset)
//  if(reset) begin
//  q2 <= 0;
//  q1 <=0;
//  q0<=1;
//  end

//  else if(enable)begin
//  case({q2,q1,q0})
 
//  3'b001: begin 
// q2<=1'b0;
// q1<=1'b1;
// q0<=1'b0;
//  end

//   3'b010: begin 
// q2<=1'b0;
// q1<=1'b1;
// q0<=1'b1;
//  end

//   3'b011: begin 
// q2<=1'b1;
// q1<=1'b0;
// q0<=1'b0;
//  end

//    3'b100: begin 
// q2<=1'b1;
// q1<=1'b0;
// q0<=1'b1;
//  end

//   3'b101: begin 
// q2<=1'b1;
// q1<=1'b1;
// q0<=1'b0;
//  end

//   3'b110: begin 
// q2<=1'b0;
// q1<=1'b0;
// q0<=1'b1;
//  end


// default: begin 
// q2<=1'b0;
// q1<=1'b0;
// q0<=1'b1;
//  end

//  endcase
//  end
// endmodule

// //Digital stop watch
// module ones(ones,clk,reset,enable);

// output reg [3:0] ones;
// input clk,reset,enable;

// always @(posedge clk or posedge reset)begin
//     if(reset)begin
// ones <= 4'b000;
// end

// else if(enable)begin
//     if(ones == 4'b1001)
// ones <= 4'b0000;
// else
// ones <= ones+4'b0001;
// end

// else 
// ones <= ones;

// end
// endmodule

// module tens(tens,clk,reset,enable);
// output reg [3:0] tens;
// input clk,reset,enable;

// always @(posedge clk or posedge reset)
// if(reset)
// tens <= 4'b0000;

// else if(enable)begin
//     if(tens == 4'b0101)
//     tens <= 4'b0000;
    
//     else 
//     tens <= tens + 4'b0001;
// end

// else
// tens <= tens;
// endmodule

//ones and tens both mix
module digitalstopwatch(tens,ones,clk,reset,enable);
output reg [3:0] tens;
output reg [3:0] ones;
input clk,reset,enable;

always @(posedge clk or posedge reset)begin
    if(reset)begin
    ones <= 4'b0000;
    tens <= 4'b0000;
    end
    else if(enable)begin
    if(ones == 4'b1001)
ones <= 4'b0000;

else if( tens == 4'b0101)
     tens <= 4'b0000

else
tens <= tens + 4'b0001;
ones <= ones + 4'b0001;

    end
endmodule