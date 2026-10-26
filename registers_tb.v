// `timescale 1ns/1ns
// `include "registers.v"

// module registers_tb;

// simple_register mut();

// initial begin
    

//     $dumpfile("registers.vcd");
//     $dumpvars(0,registers_tb);

//     #200 $finish;
// end
// endmodule





// `timescale 1ns/1ns
// `include "registers.v"

// module registers_tb;

//  integer_example mut();

// initial begin
    

//     $dumpfile("registers.vcd");
//     $dumpvars(0,registers_tb);

//     #200 $finish;
// end
// endmodule




`timescale 1ns/1ns
`include "registers.v"

module registers_tb;

  save_time mut();

initial begin
    

    $dumpfile("registers.vcd");
    $dumpvars(0,registers_tb);

    #200 $finish;
end
endmodule