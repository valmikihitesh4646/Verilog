// d ff synchronous active low reset & active high set
module d_flipflop(q,d,clk,set,reset);
output reg q;
input d,clk,set,reset;

always @(posedge clk) begin
    
if(reset)
q<= 0;    //We use the non-blocking statement here because the hardware execution should be parallel execution, concurrent execution. 
else if(set)
q<=1;
else
q<=d;
end
endmodule
 
// mealy fsm 101 non overlapping

// module mealy_101_nonoverlapping(
// output reg detected,
// input x,
// input reset,
// input clk

// );
// reg [1:0] state,next_state;

// parameter s0 = 2'b00,
// s1 = 2'b01,
// s2 = 2'b10;

// always @ (posedge clk or posedge reset) begin
//     if(reset)
//     state <= s0;
//     else
//     state <= next_state;

// end

// always @ (state or x) begin

// case (state) 
// s0 : begin
//     detected = 0;
//     next_state = (x == 1)? s1 : s0;
    
// end

// s1 : begin
//     detected = 0;
// next_state = (x == 0) ? s2 : s1;

// end 

// s2 : begin

// detected = (x == 1) ? 1 : 0;
// next_state =  s0;

// end

// default : begin
    

// detected = 0;
// next_state = s0;

// end


// endcase
// end
// endmodule

//  // mealy fsm 011 overlapping
// module mealy_011_NOL(
// output reg detected,
// input x,
// input reset,
// input clk
// );
//  reg [1:0] state,next_state;

//  parameter s0 = 2'b00,
//  s1 = 2'b01,
//  s2 = 2'b10;

//  always @(posedge clk or posedge reset) begin
//     if(reset)
//     state <= s0;
// else
// state <= next_state;
//  end

//  always @ (state or x) begin
//     case(state)
//     s0 :  begin
//     detected = 0;
//     next_state = (x==0) ? s1: s0;
//     end

// s1 : begin

//     detected = 0;
//    next_state = (x==1) ? s2: s1;

// end

// s2 : begin

//     detected = (x==1) ? 1 : 0;
//    next_state = (x==1) ? s0: s1;

// end

// default: begin
//     detected = 0;
//       next_state = s0; 

// end

//     endcase

//  end
// endmodule