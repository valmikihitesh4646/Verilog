
// //dataflow level modelling
// module fulladder(sum,cout,a,b,cin);
// output sum,cout;
// input a,b,cin;
  
// assign sum = a^b^cin;
// assign cout = a&b | (cin&(a^b));
// endmodule  

// module ripple_4bit_adder(sum,cout,a,b,cin);
// output [3:0] sum;
// output cout;
// input [3:0] a,b;
// input cin;

// wire c1,c2,c3;

// fulladder f0(sum[0],c1,a[0],b[0],cin);
// fulladder f1(sum[1],c2,a[1],b[1],c1);
// fulladder f2(sum[2],c3,a[2],b[2],c2);
// fulladder f3(sum[3],cout,a[3],b[3],c3);
// endmodule

//carry look ahead adder module

// module carrylookaheadadder(sum,cout,a,b,cin);
// output [3:0] sum;
// output cout;
// input [3:0] a,b;
// input cin;
// wire c1,c2,c3,c4;
// wire [3:0] g,p; 

// assign g = a&b;
// assign p = a^b;

// assign c1 = g[0] | (p[0] & cin) ;
// assign c2 = g[1] | (p[1] & c1) ;
// assign c3 = g[2] | (p[2] & c2) ;
// assign c4 = g[3] | (p[3] & c3) ;

// assign sum[0] = p[0]^cin;
// assign sum[1] = p[1]^c1;
// assign sum[2] = p[2]^c2;
// assign sum[3] = p[3]^c3;

// assign cout = c4;

// endmodule

// full subractor
// module full_sub(diff,borr,a,b,c);
// output diff,borr;
// input a,b,c;

// assign diff = a ^ b ^ c;
// assign borr = (~a & b | ~a&c | b&c );

// endmodule

// jk master slave flipflop

// module jk_master_slave(q,qbar,j,k,clock,clear);
// output q,qbar;
// input j,k,clock,clear;

// wire a,b,y,ybar,c,d,cbar;

// not(cbar,clock);

// nand(a,j,clock,clear,qbar);
// nand(b,k,clock,q);

// nand(y,a,ybar);
// nand(ybar,clear,y,b);

// nand(c,y,cbar);
// nand(d,ybar,cbar);

// nand(q,c,qbar);
// nand(qbar,q,d,clear);

// endmodule

// module synchronous_counter(q,clear,clock,count_enable);
// output [3:0] q;
// input clear,clock,count_enable;

// wire[3:0] t;

// assign t[0] = count_enable;

// and(t[1],q[0],t[0]);
// and(t[2],q[1],t[1]);
// and(t[3],q[2],t[2]);

// jk_master_slave ff0(q[0],qbar[0],t[0],t[0],clear,clock);
// jk_master_slave ff1(q[1],qbar[1],t[1],t[1],clear,clock);
// jk_master_slave ff2(q[2],qbar[2],t[2],t[2],clear,clock);
// jk_master_slave ff3(q[3],qbar[3],t[3],t[3],clear,clock);

// endmodule

// delays 
module delays(out,a,b,c);
output out;
input a,b,c;
wire e;

and #(5) (e,a,b);
or #(4)  (out,e,c);
endmodule