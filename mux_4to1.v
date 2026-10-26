module mux4_to_1(y,i0,i1,i2,i3,s0,s1);

output y;
input s0,s1,i0,i1,i2,i3;
wire y0,y1,y2,y3;
wire not_s1,not_s0;

not n1(not_s0,s0);
not n2(not_s1,s1);

and a0(y0,i0,not_s0,not_s1);
and a1(y1,i1,s0,not_s1);
and a2(y2,i2,not_s0,s1);
and a3(y3,i3,s0,s1);

or o1(y,y0,y1,y2,y3);


endmodule

