// module module2();
// parameter latency = 20;

// parameter delta = 2;

// reg [7:0] a,b,c,e,f;
//  initial begin 
//     $monitor("a = %0d | b = %0d | c = %0d | e = %0d |  f = %0d at time=%0t",a,b,c,e,f,$time); 
//  end
//  initial begin 
//     a=0;

//     #10 b=1;
//     #(latency) c =a+b;
//     #(latency+delta) e = 2;
//     #c f=4;
//     #(4:5:6) c = e - f;
//  end 
//  endmodule 

//Behavior level modeling syntax in Verilog //
// module event_based_control();

// reg q,d,clk;

// initial 
// clk = 1'b0;

// always
// #5 clk = ~clk;

// initial 
// d = 1'b0;
// always @(negedge clk) begin
//     d = ~d;
// //     $display("d = %0d at time %0t",d,t);

// // end

// // module 2 lecture2 at 53 mins
// // module simple_if_statements(
// //   input lock,
// //   input enable,
// //     input [7:0] data,
// //     input [7:0] in,
// //     output reg [7:0] buffer,
// //     output reg[7:0] out
// // );

// // always @(*) begin
// //     if(lock) // if lock true aythey
// //     buffer = data;

// //     if(enable)  // if enable 1 aythey
// // out = in;


// // end
// // endmodule

// module nested_if_else_statements(
// input [1:0] alu_control,
// input x,n,z,
// output reg [7:0] y
// );
// always @(*) begin
//     if(alu_control == 0)
// y = x+n;

// else if(alu_conrol == 1)
// y=x-z;


// // else if(alu_conrol == 2)
// // y=x*z;

// // else
// // $display("invaild alu control signal");
// // end
// // endmodule

// module mux(
//     output reg out,
//     input i0,i1,i2,i3,
//     input s0,s1
// );

// always @(*) begin
// case({s1,s0})
// 2'b00: out = i0;
// 2'b01: out = i1;
// 2'b10: out = i2;
// 2'b11: out = i3;
// default: out = 2'bxx;
// endcase
// end
// endmodule


// module mux(
//     output reg out,
//     input i0, i1, i2, i3,
//     input s0, s1
// );

// always @(*) begin
//     case ({s1,s0})
//         2'b00: out = i0;
//         2'b01: out = i1;
//         2'b10: out = i2;
//         2'b11: out = i3;
//         default: out = 1'bx;
//     endcase
// end

// endmodule

// module case_examples(
//     input [3:0] value,
//     output reg result
// );
// always @(*) begin
//     casex(value)

// 4'b1010: result = 1'b1;
// 4'b1001: result = 1'b0;

// default: result = 1'bx;

//     endcase
// end
// endmodule

// module parallel_execution;
// reg x,y;
// reg [1:0] z,w;

// initial fork

// x=1'b0;
// #5 y=1'b1;
// #10 z={x,y};
// #20 z={y,x};

// join
// // endmodule

// module bitwise_xor (out,i0,i1);

// parameter  N = 32;
// output [N-1:0] out; input [N-1:0] i0,i1;
// genvar j;

// generate 
//     for(j = 0; j<N; j=j+1) begin: xor_loop
//     xor g1(out[j],i0[j], i1[j]);
//     end
// endgenerate

// //another method
// //it should be used btw only generate and endgenerate but not inside initial begin end
// generate for(j=0; j<N; j=j+1) begin: bit
// always @(i0[j] or i1[j]) out[j]=i0[j] ^ i1[j];
// end
    
// endgenerate
// endmodule

//module2 vid3 only behavioural lelvel modelling

// module mux4to1(y,i0,i1,i2,i3,s1,s0);
// output reg y;
// input s1,s0;
// input i0,i1,i2,i3;      // this is basic conditional style syntax

// always @(*) begin

// case({s1,s0})
// 2'b00: y=i0;
// 2'b01: y=i1;
// 2'b10: y=i2;
// 2'b11: y=i3;
// default: y=1'bx;

// endcase
// end
// endmodule

// vid3  counter behavioural 
// module counter(q,clear,clock);
// output reg [3:0] q;
// input clock,clear;

// // always @(posedge clock or posedge clear)begin
// // if(clear)
// //  q<=4'b0;    
// // else
// // q<=q+1;


// // end
// // endmodule

// //2*4 decoder
// module decoder2to4(y,i,en);
// input [1:0] i;
// input en;
// output [3:0] y;
// wire noti[0],noti[1];

// // using bitwiase
// assign y = en & ~i[1] & ~i[0] |  en & ~i[1] & i[0] |  en & i[1] & ~i[0]  |  en & i[1] & i[0];
// not(noti[1],i[1]);
// not(noti[0],i[0]);

// and(y[0],en,noti[1],noti[0]);
// and(y[1],en,noti[1],i[0]);
// and(y[2],en,i[1],noti[0]);
// and(y[3],en,i[1],i[0]);
// endmodule



// // decoder behavioural modelling
// module decoder2to4(y,i,en);
// output reg [3:0] y;
// input en;
// input [1:0] i;

// always @(*) begin

// case({en,i})
// 3'b100: y=4'b0001;
// 3'b101: y=4'b0010;
// 3'b110: y=4'b0100;
// 3'b111: y=4'b1000;
// 3'b000,
// 3'b001,
// 3'b010,
// 3'b011: y = 4'b0000;
// default: $display("error");
// endcase
// end
// endmodule

// dataflow style 3*8 decoder mostly used in the industry
// module decoder3to8(y,i,en);
// output  [7:0] y;
// input [2:0] i;
// input en;

// assign y = {
// en & ~i[2] & ~ i[1]  & ~ i[0],
// en & ~i[2] & ~ i[1]  &  i[0],
// en & ~i[2] & i[1]  & ~ i[0],
// en & ~i[2] &  i[1]  & i[0],
// en & i[2] & ~ i[1]  & ~ i[0],
// en & i[2] & ~ i[1]  &  i[0],
// en & i[2] &  i[1]  & ~ i[0],
// en & i[2] &  i[1]  &  i[0]
// };
// endmodule



//behavioural style 3*8 decoder//
// module decoder3to8(y,i,en);
// output reg [7:0] y;
//  input en;
// input [2:0] i;
// always @(*) begin
// case({en,i})
// 4'b1000: y=8'b00000001;
// 4'b1001: y=8'b00000010;
// 4'b1010: y=8'b00000100;      // if the enable is 1 and for all 8b cases
// 4'b1011: y=8'b00001000;
// 4'b1100: y=8'b00010000;
// 4'b1101: y=8'b00100000;
// 4'b1110: y=8'b01000000;
// 4'b1111: y=8'b10000000;

// 4'b0000, 
// 4'b0001,
// 4'b0010, 
// 4'b0011, 
// 4'b0100,         // if enable is 0 and i[2:0] for all cases then the oput is 0
// 4'b0101, 
// 4'b0110,
// 4'b0111, y=8'b00000000;
// default: display("error");

// endcase
// end 
// endmodule

// // 4*2 encoder  (dataflow level modelling)
// module encoder_4to2(y,v,i);
// output [1:0] y;
// output v;
// input [3:0] i;    // we need 4, 2:1 mux which are of 3 bits  or 12 2:1 mux which are of 1 bit

// assign {v,y} =  i[0]?3'b100:i[1]?3'b101:i[2]?3'b110:i[3]?3'b111:3'b000;
// endmodule

// 4*2 encoder  (behavioural level modelling)
// module encoder_4to2(y,v,i);
// output reg [1:0] y;
// output   reg v;
// input [3:0] i;    

// always @(*) begin
// if(i[0]) {v,y} = 3'b100;
// else if(i[1]) {v,y} = 3'b101;
// else if(i[2]) {v,y} = 3'b110;
// else if(i[3]) {v,y} = 3'b111;
// else  {v,y} = 3'b000;
// end
// endmodule

//data flow level modelling // 4bit magnitude comparator
module comparator_4bit(gr,eq,les,a,b);
output gr,eq,les;
 input [3:0] a,b;     // bitwise operators

assign gr = (a[3] & ~b[3]) | ((a[3] ~^ b[3]) & (a[2] & ~b[2])  ) | ( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] & ~b[1]) ) | ( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (a[0] & ~ b[0]));
assign eq = ( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (a[0]  ~^ b[0]) );
assign les = (b[3] & ~a[3]) | ((a[3] ~^ b[3]) & (b[2] & ~a[2])  ) |( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (b[1] & ~a[1]) ) | ( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (b[0] & ~ a[0]));

endmodule

// //behavioural
// module comparator_4bit(gr,eq,les,a,b);
// output reg gr,eq,les;
//  input [3:0]  a,b;
//  always @(*) begin       //Relation operators
//     gr = (a > b);
//     eq = (a == b);
//      les = (a<b);
//  end
// endmodule

// 4 bit ALU    //// 4 bit ALU  behavioural modelling style

// module ALU_4bit(x,y,a,b,opcode);
// output reg [3:0] x;
// output reg [3:0] y;

// input [3:0] a,b;
// input [3:0] opcode;

// always @(*) begin

// case(opcode)     

//  4'b0000: x = a;          // Pass A
//         4'b0001: x = ~b;         // NOT B
//         4'b0010: x = a ^ a;      // XOR reduction
//         4'b0011: x = a & b;      // AND operation
//         4'b0100: x = a | b;      // OR operation
//         4'b0101: x = a ^ b;      // XOR operation

//         4'b0110: x = (a > b);    // A > B
//         4'b0111: x = (a < b);    // A < B

//         4'b1000: x = ~a;         // NOT A
//         4'b1001: x = (a == b);   // Equality check

//         4'b1010: {y,x} = a + b;  // Addition
//         4'b1011: x = a - b;      // Subtraction
//         4'b1100: {y,x} = a * b;  // Multiplication

//         4'b1101: x = a >> b;     // Right shift
//         4'b1110: x = a << b;     // Left shift
//         4'b1111: x = -a;

// endcase
// end
// endmodule
 


//   //Example 2: Find the First '1' Bit in a Vector
//  module while_loop_find_bit;
//     `define TRUE 1'b1  // Define a macro for TRUE
//     `define FALSE 1'b0 // Define a macro for FALSE

//     reg [15:0] flag;   // Declare a 16-bit register to hold the vector
//     integer i;         // Declare an integer to use as an index
//     reg continue;      // Flag to control the while loop

//     initial begin  
//        flag = 16'b0110_0001_0100_0111 ;  // Initialize the vector,play around with these
//         i = 0;  // Start from the first bit
//         continue = `TRUE;  // Set the loop control flag to TRUE

//         while ((i < 16) ) begin  // Loop until a '1' is found or the end is 
//             if (flag[i]) begin  // Check if the current bit is '1'
//                 $display("Encountered a TRUE bit at element number %0d", i);  // Display the 
//         //        continue = `FALSE;  // Stop the loop
//          end
//             i = i + 1;  // Move to the next bit
//         end  
//     end  
//  endmodule



 // Example 2: Initialize Array Elements
module for_loop_array_init;
    `define MAX_STATES 32  // Define the maximum number of states
    integer state[0:`MAX_STATES-1];  // Declare an array to hold state values
    integer i;  // Declare an integer for the loop index

    initial begin
        // // // Initialize even indices with 0
        // // for (i = 0; i < 32; i = i + 2)
        // //     state[i] = 1;

        // // Initialize odd indices with 1
        // for (i = 1; i < 32; i = i + 2)
        //     state[i] = 1;

        // Display the initialized array
        for (i = 0; i < 32; i = i + 1)
            $display("state[%0d] = %0d", i, state[i]);
    end
endmodule