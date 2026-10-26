// 11011 ,mealy overlapping
module mealy_11011_overlap(
output reg detected,
input x,
input clk,
input reset
);

reg [2:0] state,next_state;

parameter s0 = 3'b000,
s1= 3'b001,
s2= 3'b010,
s3= 3'b011,
s4= 3'b100;

// state trans logic
always @(posedge clk or posedge reset) begin
    if(reset)
    state <= s0;
    else
    state <= next_state; 
end

// next state and input logic  output depends on
always @ (x or state ) begin
case (state)
s0: begin
    detected = 0;
next_state =(x==1) ? s1 : s0; 
end

s1: begin
    detected = 0;
    next_state = (x==1) ? s2 : s0; 

end



s2: begin
    detected = 0;
    next_state = (x==0) ? s3 : s2; 

end




s3: begin
    detected = 0;
    next_state = (x==1) ? s4 : s0; 

end



s4: begin
    detected = (x==1) ? 1 : 0;
    next_state = (x==1) ? s2 : s0; 

end


endcase
end
endmodule