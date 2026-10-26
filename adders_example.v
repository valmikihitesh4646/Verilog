// // 1. Half Adder Implementations
// // a. Dataflow Level

// module half_adder_dataflow (S, C, A, B);

//     input A, B;
//     output S, C;

//     assign S = A ^ B;   // XOR for sum
//     assign C = A & B;   // AND for carry

// endmodule

  



module full_adder_dataflow(S,c_out, A, B, c_in);
output S,c_out;
input A,B,c_in;
assign S = A^B^c_in;
assign c_out = ((A&B) | (c_in & (A^B)));
endmodule
    