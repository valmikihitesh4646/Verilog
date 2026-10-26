
// // making the and gate from the nand gate 2 inputs
// module my_and(y,a,b);
// output y;
// input a,b;

// wire nand1_out;

// nand(nand1_out,a,b);
// nand(y,nand1_out,nand1_out);
// endmodule

// // module my_or(y,a,b);
// // output y;
// // input a,b;
// // wire nand1_out,nand2_out;

// // nand(nand1_out,a,a);
// // nand(nand2_out,b,b);

// // nand(y,nand1_out,nand2_out);
// // endmodule

// module my_not(y,a);
// output y;
// input a;
// nand(y,a,a);
// endmodule

// module my_or(y,a,b);
// output y;
// input a,b;
// wire nand1_out,nand2_out;

// nand(nand1_out,a,a);
// nand(nand2_out,b,b);

// nand(y,nand1_out,nand2_out);
// endmodule


// //question 2 
// module my_xor(y,a,b);
// output y;
// input a,b;

// wire and1out,and2out;
// wire abar,bbar;

// not(abar,a);
// not(bbar,b);

// and(and1out,abar,b);
// and(and2out,bbar,a);

// or(y,and1out,and2out);
// endmodule

// question3
// module full_adder_1bit(sum,cout,a,b,c);
// output sum,cout;
// input a,b,c;

// wire abar,bbar,cbar;
// wire a1,a2,a3,a4;
// wire and_carryout1,and_carryout2,and_carryout3;

// not n1(abar,a);
// not n2(bbar,b);
// not n3(cbar,c);

// and and1(a1,a,b,c);
// and and2(a2,abar,bbar,c);
// and and3(a3,abar,b,cbar);
// and and4(a4,a,bbar,cbar);
// and u1(and_carryout1,a,b);
// and u2(and_carryout2,b,c);
// and u3(and_carryout3,a,c);

// or or1(sum,a1,a2,a3,a4);
// or or2(cout,and_carryout1,and_carryout2,and_carryout3);

// endmodule

//srlatch question

 module rs_latch(output Q, QBAR, input R, S);
    nor #(1) n1(Q, R, QBAR);
    nor #(1) n2(QBAR, S, Q);
 endmodule

// buffif 1   buffif0 2*1 mux

// module mux_2to1(out,s,i0,i1);
// output out;
// input s,i0,i1;

// bufif0 #(1:2:3 , 3:4:5, 5:6:7)  b0(out,s,i0);
// bufif1 #(1:2:3 , 3:4:5, 5:6:7) b1(out,s,i1);
// endmodule