module wire_strong_strong_check(b);
output b;
wire x;
assign(strong0, strong1)x = 1'b0;
assign(strong1, strong0)x = 1'b1;
assign b = x;
endmodule

