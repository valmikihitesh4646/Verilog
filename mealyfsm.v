// // mealy fsm 011 non overlapping

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


// mealy fsm 11011 non overlapping


// module mealy_11011_NOL(
// output reg detected,
// input x,
// input reset,
// input clk
// );
//  reg [2:0] state,next_state;

//  parameter s0 = 3'b000,
//  s1 = 3'b001,
//  s2 = 3'b010,
//  s3 = 3'b011,
//  s4 = 3'b100;

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
//     next_state = (x==1) ? s1: s0;
//     end

// s1 : begin

//     detected = 0;
//    next_state = (x==1) ? s2: s0;

// end

// s2 : begin

//     detected = 0;
//    next_state = (x==0) ? s3: s2;

// end

// s3: begin

//     detected = 0;
//    next_state = (x==1) ? s4: s0;

// end

// s4: begin

//     detected = (x == 1) ? 1 : 0;
//    next_state = s0;

// end

// default: begin
//     detected = 0;
//       next_state = s0; 

// end

//     endcase

//  end
// endmodule


// mealy fsm 101 overlapping allowed

// module mealy_101_overlapping(
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
//     next_state = (x==1) ? s1: s0;
//     end

// s1 : begin

//     detected = 0;
//    next_state = (x==0) ? s2: s1;

// end

// s2 : begin

//     detected = (x==1) ? 1 : 0;
//    next_state = (x==1) ? s1: s0;

// end

// default: begin
//     detected = 0;
//       next_state = s0; 

// end

//     endcase

//  end
// endmodule

// // MOOOORE  fsm 101 non overlapping

// module moorefsm_NOL(
// output reg detected,
// input x,
// input clk,
// input reset

// );
// reg [1:0] state, next_state;

// parameter s0 = 2'b00,
// s1 = 2'b01,
// s2 = 2'b10,
// s3 = 2'b11;

// // state transition logic
// always @(posedge clk or posedge reset) begin
// if(reset)
// state <= s0;
// else
// state = next_state;
// end

// // next state logic depends on present state and input
// always @(state or x) begin 
//     case(state)
//     s0 : next_state = (x==1) ? s1 : s0;
//     s1 : next_state = (x==0) ? s2 : s1;
//     s2 : next_state = (x==1) ? s3 : s0;
//     s3 : next_state = (x==1) ? s1 : s0;
//     default: next_state = s0;
//     endcase
// end

// //output logic depends on the present state only
// always @(state) begin
//     case(state) begin
//     s3 : detected = 1;

// default : detected = 0;

//     endcase
// end
