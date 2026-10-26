// // full adder dataflow
// module fulladder(sum,cout,a,b,cin);
// output sum;
// output cout;
// input a,b,cin;

// assign sum = a ^ b ^ cin;
// assign cout = a & b | b & cin | a & cin;

// endmodule


//full adder behavioural level;
// module fulladder(sum,cout,a,b,cin);
// output  reg sum,cout;
//  input a,b,cin;

//  always @(a,b,cin) begin

// sum = a ^ b ^ cin;
// cout = a & b | b & cin | a & cin;
//  end
// endmodule

// // 4 bit fulll adder structural way
// module fulladder_st(sum,cout,a,b,cin);    // paina danni use chesi idhi cesthunnam like function calling
// output [3:0]  sum;
// output cout;
// input [3:0] a,b;
// input cin;

// wire c1,c2,c3;

// fulladder fa1(sum[0],c1,a[0],b[0],cin);
// fulladder fa2(sum[1],c2,a[1],b[1],c1);
// fulladder fa3(sum[2],c3,a[2],b[2],c2);
// fulladder fa4(sum[3],cout,a[3],b[3],c3);

// endmodule

//full adder dataflow  level;
// module fulladder_df(sum,cout,a,b,cin);
//  output [3:0]  sum;
// output cout;
// input [3:0] a,b;
// input cin;

// assign {cout,sum} = a + b + cin;
// endmodule

// ////full adder behaviourall  level;
// module fulladder_beh(sum,cout,a,b,cin);
//  output  reg [3:0]  sum;
// output reg cout;
// input [3:0] a,b;
// input cin;

// always @ (a,b,cin) begin
    
//     {cout,sum} = a + b + cin;
// end
// endmodule

// // 2:1 muxx dataflow
// module mux_2to1(out,s,i0,i1);
// output out;
// input s,i0,i1;

// assign out = (s == 0) ? i0 : i1;
// endmodule

// // // 2:1 muxx behavioural
// module mux_2to1(y,s,i0,i1);
// output reg y;
//  input s,i0,i1;

//  always @(*)begin
// if(s)
// y = i1;
// else 
// y = i0;


//  end
// endmodule


// // // 4:1 muxx datafloww
// module mux_4to1(y,s0,s1,i0,i1,i2,i3);
// output  y;
// input s1,s0;   or input [1:0] s;
// input i0,i1,i2,i3;

// // assign y =  i[s]; 
//  // another method
 

//  assign y = ~s1 & ~s0 & i0 | ~s1 & s0 & i1 | s1 & ~s0 & i2 | s1 & s0 & i3;
 //another method
//  assign y = (s == 2'd0)?i0:((s==2'd1)?i1:((s==2'd2)?i2:i3));

// endmodule


//another method// // // 4:1 muxx datafloww

// // // 4:1 muxx behavioural
// module mux_4to1(y,s,i0,i1,i2,i3);
// output reg  y;
//  input [1:0] s;
// input i0,i1,i2,i3;

// always @(*) begin
// case(s)    

// 2'd0: y=i0; 
// 2'd1: y=i1; 
// 2'd2: y=i2; 
// 2'd3: y=i3; 
// default: $display("error");
// endcase
// end
// endmodule

//2*4 decoder// dataflow level
// module decoder2to4(y3,y2,y1,y0,en,i1,i0);
// output y3,y2,y1,y0;
// input en,i1,i0;

// assign y0 =  en & ~i1 & ~i0;
//  assign y1 =  en & ~i1 & i0; 
//  assign y2 = en & i1 & ~i0;  
// assign y3=  en & i1 & i0;

// endmodule

// //2*4 decoder// behacioural
// module decoder2to4(y,en,i);
// output reg [3:0] y;
// input en;
// input [1:0] i;
 
//  always @ (*) begin
//     case({en,i[1],i[0]})
//   3'b100: y= 4'b0001;
//   3'b101: y=4'b0010;
//   3'b110: y=4'b0100;
//   3'b111: y=4'b1000;

// 3'b011: y=4'bxxxx;
//     default: y = 4'b0000;
//     endcase
//  end
// endmodule




// //2*4 decoder// behacioural
// module decoder2to4(y3,y2,y1,y0,en,i1,i0);
// output reg y3,y2,y1,y0;
// input en;
// input i1,i0;
 
//  always @ (*) begin
//     case({en,i1,i0})

//         3'b100: begin
//             y3 = 0;
//             y2 = 0;
//             y1 = 0;
//             y0 = 1;
//         end

//         3'b101: begin
//             y3 = 0;
//             y2 = 0;
//             y1 = 1;
//             y0 = 0;
//         end

//         3'b110: begin
//             y3 = 0;
//             y2 = 1;
//             y1 = 0;
//             y0 = 0;
//         end

//         3'b111: begin
//             y3 = 1;
//             y2 = 0;
//             y1 = 0;
//             y0 = 0;
//         end

//         default: begin
//             y3 = 0;
//             y2 = 0;
//             y1 = 0;
//             y0 = 0;
//         end


// 3'b011: y=4'bxxxx;
//  end
// endmodule


// //Dataflow 3*8 Decoder 
// module decoder_3to8(y,en,i);
// output [7:0] y;
// input en;
// input [2:0] i;

// assign y[0] = en  &  ~i[2] & ~i[1] & ~i[0];
// assign y[1] = en  &  ~i[2] & ~i[1] & i[0];
// assign y[2] = en  &  ~i[2] & i[1] & ~i[0];
// assign y[3] = en  &  ~i[2] & i[1] & i[0];
// assign y[4] = en  &  i[2] & ~i[1] & ~i[0];
// assign y[5] = en  &  i[2] & ~i[1] & i[0];
// assign y[6] = en  &  i[2] & i[1] & ~i[0];
// assign y[7] = en  &  i[2] & i[1] & i[0];
// endmodule

//4*2 encoder daatafloww
// module encoder(y,i); 
// output [1:0] y;
// //output v;
// input [3:0] i;

// assign y[0] = i[2] | i[3];
// assign y[1] = i[1]| i[3];
// endmodule

//4*2 Priority Encoder Behavioral 
// module  Priority_Encoder_Beh(y,i,v);
// output reg [1:0]  y;
// input [3:0] i;
// output reg v;

// always @ (*) begin
// if(i[3]) {v,y} = 3'b100;
// else if(i[2]) {v,y} = 3'b101;
// else if(i[1]) {v,y} = 3'b110;    
// else if(i[0]) {v,y} = 3'b111;    
// else {v,y} = 3'b000;

// end
// endmodule


// //4*2 Priority Encoder dataflowwww
// module  Priority_Encoder_Beh(y,i,v);
// output  [1:0]  y;
// input [3:0] i;
// output  v;

// assign {v,y} = i[0]?3'b100:i[1]?3'b101:i[2]?3'b110:3'b111 ;
// endmodule

//4-bit magnitude comparator 
// module comparator_4bit(gr,eq,les,a,b);
// output gr,eq,les;
//  input [3:0] a,b;     // bitwise operators

// assign gr = (a[3] & ~b[3]) | ((a[3] ~^ b[3]) & (a[2] & ~b[2])  ) | ( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] & ~b[1]) ) | ( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (a[0] & ~ b[0]));
// assign eq = ( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (a[0]  ~^ b[0]) );
// assign les = (b[3] & ~a[3]) | ((a[3] ~^ b[3]) & (b[2] & ~a[2])  ) |( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (b[1] & ~a[1]) ) | ( (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (b[0] & ~ a[0]));

// endmodule

// //4-bit magnitude comparator  behavoiural
// module comparator_4bit(gr,eq,les,a,b);
// output reg gr,eq,les;
//  input [3:0] a,b;     // bitwise operators
 
//  always @(*) begin
// gr = (a>b);
// les = (a<b);
// eq = (a==b);

//  end
// endmodule


//ALU
module alu(x,y,a,b,in);
output x,y; 
input [2:0] in,a,b;

always @ (*)begin
    case(in)begin
        
3'b000: 
3'b001: 
3'b010: 
3'b011: 
3'b100: 
3'b101: 
3'b110: 
3'b111: 

default: $display("errrorrr");

    end
endcase
endmodule