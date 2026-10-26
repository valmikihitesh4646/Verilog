// module simple_register;
// reg reset;
// initial 
// begin 
    
//     reset = 1'b1;

// #100   reset = 1'b0;

// end
// endmodule

// module registers_example;
// reg [3:0] data;
// integer counter;
// real voltage;
// time simulation_time;

// initial begin
//     data = 4'b1010;
//     counter = 44;
//     voltage = 22.3;
//     simulation_time = $time;

//     $display("data is %0b", data);
//     $display("counter is %0d",counter);
//     $display("voltage is %0f",voltage);
//     $display("time  is %0t",simulation_time);

// #10
// simulation_time = $time;
// $display("simulation time after delay is %t",simulation_time);
// $finish;
// end
// endmodule


// module integer_example;
// integer counter;
// initial 
// #5 $display("counter = %0d, time = %0t",counter,$time);


// initial begin
//     #25
//     counter = 22;
//     $display("counter is %0d and time is %0t",counter,$time);

// counter = 32'd10 + 32'd15;


//     $display("counter after adding is  %0d and time is %0t",counter,$time);

// end
// endmodule

module save_time;

time save_time;
initial  #2 $display("save_time = %0t",save_time);

initial begin
    
#10 save_time = $time;
$display("save_time = %0t ",save_time);


#22
save_time = $time;
$display("latest updates time is %0t",save_time);




end
endmodule