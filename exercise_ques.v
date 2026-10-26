// module exercise_ques;

// reg [7:0] a;
// reg b;
// reg signed [3:0] c;      // we should definitely mention the signed word or else it shows another output

// reg [31:0] d;

// initial begin
//  a = 8'b0111_1011;

// b = 16'hx;

//  c = 4'b1110;
//  d =  'h1234;


//  $display("a = %0b  and b = %0b and c = %0b and c in decimal is: %0d and d = %0h",a,b,c,c,d);
// end
// endmodule  

// module exercise_ques.v;
// wire [7:0] a_in;
// reg  [31:0] address = 32'd3;
// integer count;
// time snap_shot;
// integer delays[0:19];
// reg [63:0] MEM[0:255];   //check agiain
// parameter cache_size = 512
// end 
// endmodule


// module shift_register(reg_out,clk,reg_in);

// output  [3:0] reg_out;
// input [3:0] reg_in ;
// input clk;

// endmodule


// module shift_register;
// reg [3:0] reg_out;
// reg clk;
// wire [3:0] reg_in;

// shift_reg sr1(.reg_out(REG_OUT), .reg_in(REG_IN),  .clk(CLK));

// endmodule

 
 `define MEM_SIZE 1024
module exercise;
// this is the behavioural level modelling of the verilog syntax style
reg [3:0] latch;
reg [2:0] in_reg;
initial begin
    latch = 4'd12;
  #0   $display("the current value of latch is %0b\n",latch);

    in_reg = 3'd2;
    
$monitor($time, "in_reg value is %0b\n",in_reg[2:0]);
$display("the memsize is %h",`MEM_SIZE);

end
endmodule

