module unary_opts;

integer a,b,c;
initial begin
a = -5;
b = +6;
c = -10/6;
$monitor("time = %0t, a = %0d,b=%0d,c=%0d",$time,a,b,c);
end
endmodule