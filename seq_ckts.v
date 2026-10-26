// //beh neg edge trigg dff asynchronous  active high reset
// module dff(q,d,reset,clk);
// output reg q;
// input d,reset,clk;

// always @ (negedge clk or posedge reset) begin
//     if(reset) begin
//         q <= 1'b0;
//     end
// else begin
// q <= d;

// end

// end
// endmodule


module dff(q,d,reset,clk);
output reg q;
input d,reset,clk;

always @ (posedge clk or negedge reset) begin
    if(!reset) begin
        q <= 1'b0;
    end
else begin
q <= d;

end

end
endmodule


module dff(q,d,reset,set,clk);
output reg q;
input d,reset,set,clk;

always @ (posedge clk or negedge reset or posedge set) begin
    if(!reset) 
        q <= 1'b0;
    
    else if(set) 
        q <= 1'b1;
else 
q <= d;



end
endmodule