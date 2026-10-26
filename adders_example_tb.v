// `timescale 1ns/1ns
// `include "adders_example.v"

// module adders_example_tb;

//     reg A, B;
//     wire S, C;

//     half_adder_dataflow uut (S, C, A, B);

//     initial begin
//         $dumpfile("adders_example.vcd");
//         $dumpvars(0, adders_example_tb);

//         $display("Time\tA B | S C");
//         $monitor("%g\t%b %b | %b %b", $time, A, B, S, C);

//         A = 0; B = 0; #10;
//         A = 0; B = 1; #10;
//         A = 1; B = 0; #10;
//         A = 1; B = 1; #10;

//         $finish;
//     end

// endmodule


 `timescale 1ns/1ns
 `include "adders_example.v"
 module adders_example_tb;
  reg A,B,c_in;
  wire S,c_out;
   full_adder_dataflow uut (S, c_out, A, B, c_in);

    initial begin
        $dumpfile("adders_example.vcd");
        $dumpvars(0, adders_example_tb);

        $display("Time\tA B c_in | S c_out");
        $monitor("%g\t%b %b %b | %b %b", $time, A, B, c_in, S, c_out);

        
        A = 0; B = 0; c_in = 0; #10;
        A = 0; B = 0; c_in = 1; #10;
        A = 0; B = 1; c_in = 0; #10;
        A = 0; B = 1; c_in = 1; #10;
        A = 1; B = 0; c_in = 0; #10;
        A = 1; B = 0; c_in = 1; #10;
        A = 1; B = 1; c_in = 0; #10;
        A = 1; B = 1; c_in = 1; #10;


        $finish;
    end

endmodule