// module gate_level;
// wire out1,out2,out3,in1,in2,in3;

// assign in1 = 1;
// assign in2 = 0;
// assign in3 = 1;

// and and1(out1,in1,in2);
// nand nand1(out2,in1,in2);

// nand nand3(out3,in1,in2,in3);

// initial #5   $display("out1 = %0b and out2 = %0b and out3 = %0d",out1,out2,out3);
// initial #30 $finish;


// endmodule

// module buf_not_gates;

// wire out1,out2,out3,out4,in;

// assign in = 1'bz;

// buf buf1(out1,in);
// not not1(out2,in);

// buf buf2(out3,out4,in);


// initial #5
// $display("o1 = %0b and o2 = %0b and o3 = %0b and o4= %0b",out1,out2,out3,out4);


// initial #30 $finish;

// endmodule


module bufifandnotif;

wire out1,out2,out3,out4,in,ctrl;
assign in = 0;
assign ctrl = 1;

bufif1 buf1(out1,in,ctrl);
bufif0 buf2(out2,in,ctrl);
notif1 not1(out3,in,ctrl);
notif0 not2(out4,in,ctrl);


initial #10 $display(" out1 = %0b and out2 =%0b  and out3 = %0b and  out4 = %0b",out1,out2,out3,out4);
initial #50   $finish;


endmodule