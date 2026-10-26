
// // // MOOOORE  fsm 101 non overlapping

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
//     case(state) 
//     s3 : detected = 1;
    
// default : detected = 0;

//     endcase
// end
// endmodule



// // MOOOORE  fsm 010 non overlapping

module moorefsm_NOL(
output reg detected,
input x,
input clk,
input reset

);
reg [1:0] state, next_state;

parameter s0 = 2'b00,
s1 = 2'b01,
s2 = 2'b10,
s3 = 2'b11;

// state transition logic
always @(posedge clk or posedge reset) begin
if(reset)
state <= s0;
else
state = next_state;
end

// next state logic depends on present state and input
always @(state or x) begin 
    case(state)
    s0 : next_state = (x==0) ? s1 : s0;
    s1 : next_state = (x==1) ? s2 : s1;
    s2 : next_state = (x==0) ? s3 : s0;
    s3 : next_state = (x==1) ? s0 : s1;
    default: next_state = s0;
    endcase
end

//output logic depends on the present state only
always @(state) begin
    case(state) 
    s3 : detected = 1;
    
default : detected = 0;

    endcase
end
endmodule