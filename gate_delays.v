module delay(out,a,b,c);
output out;
input a,b,c;
wire e;
and #(5)  and1(e,a,b);      //5ns delay for displaying the output
or #(4)  or1(out,e,c);    //4ns delay to display the output 

endmodule