// `timescale 1ns/1ns
// `include "samir.v"

// module samir_tb;
// wire oscillate;

// que1 uut(.oscillate(oscillate));

// initial begin
    
// $monitor("time = %0t | oscillate = %0b",$time,oscillate);
//  #200; $finish;
// end


//     initial begin
// //      $dumpfile("samir.vcd");
// //      $dumpvars(0,samir_tb);
// // end


// `timescale 1ns/1ns
// `include "samir.v"

// module samir_tb;
// wire clk;

// que2 uut(.clk(clk));

// initial begin
    
// $monitor("time = %0t | clk = %0b",$time,clk);
// #100; $finish;
// end


//     initial begin
//      $dumpfile("samir.vcd");
//      $dumpvars(0,samir_tb);
// end
// endmodule



// `timescale 1ns/1ns
// `include "samir.v"

// module samir_tb;

//     // Testbench signals
//     reg clk;
//     reg reset;
//     reg [7:0] insert_cash;
//     reg [7:0] item_price;
//     reg item_available;
//     reg select_item;
//     reg cancel;

//     wire [7:0] dispensed_item;
//     wire [7:0] dispensed_change;
//     wire error;

//     // Instantiate the vending machine module
//     vending_machine_mealy vm (
//         .clk(clk),
//         .reset(reset),
//         .insert_cash(insert_cash),
//         .item_price(item_price),
//         .item_available(item_available),
//         .select_item(select_item),
//         .cancel(cancel),
//         .dispensed_item(dispensed_item),
//         .dispensed_change(dispensed_change),
//         .error(error)
//     );

//     // Clock generation
//     always begin
//         #5 clk = ~clk;
//     end

//     // Initial block to run the test cases
//     initial begin

//         // Initialize signals
//         clk = 0;
//         reset = 0;
//         insert_cash = 0;
//         item_price = 0;
//         item_available = 0;
//         select_item = 0;
//         cancel = 0;

    //    // Reset the machine
    //     #10 reset = 1;
    //     #10 reset = 0;

    //     //Test Case 1: Insert cash and select item
    //     #10 insert_cash = 50;
    //     #10 select_item = 1;
    //     item_available = 1;
    //     item_price = 30;

    //     #30;

    //    //Check that item is dispensed and no error
    //     if (dispensed_item != 8'b1 || error != 0)
    //         $display("Test Case 1 Failed");
    //     else
    //         $display("Test Case 1 Passed");


        // Reset the machine
    //     #10 reset = 1;
    //     #10 reset = 0;


    //     //Test Case 2: Insufficient cash
    //     insert_cash = 20;
    //     #10 select_item = 1;
    //     item_price = 30;
    //     item_available = 1;

    //     #30;

    //    // Check for error due to insufficient cash
    //     if (error != 0)
    //         $display("Test Case 2 Failed");
    //     else
    //         $display("Test Case 2 Passed");


    //    // Reset the machine
    //     #10 reset = 1;
    //     #10 reset = 0;


    //   //  Test Case 3: Cancel the transaction //
    //     insert_cash = 40;
    //     #10 cancel = 1;

    //     #30;

    //    // Check that cash is returned
    //     if (dispensed_change != 40)
    //         $display("Test Case 3 Failed");
    //     else
    //         $display("Test Case 3 Passed");


    //     // Reset the machine
    //     // #10 reset = 1;
    //     // #10 reset = 0;

    //     // cancel = 0;

//         // Test Case 4: Item unavailable
//         insert_cash = 50;
//         #10 select_item = 1;
//         item_price = 30;
//         item_available = 0;

//         #30;

//         if (error != 1)
//             $display("Test Case 4 Failed");
//         else
//             $display("Test Case 4 Passed");

//         #10
//         $finish;

//     end

// endmodule


// last viddeo verilog

// `timescale 1ns/1ns
// `include "samir.v"

// module samir_tb;
// wire q;
// reg clk,d;

// latch uut(.q(q), .d(d), .clk(clk));
// always #5 clk = ~clk;

// initial begin    
// $monitor("time = %0t | clk = %0b | d = %0b| q = %0b", $time.q,clk,d);
// clk = 0; d = 0;
// #10 d = 1;
// #10 d = 0;
// #30 $finish;


// end

//     initial begin
//      $dumpfile("samir.vcd");
//      $dumpvars(0,samir_tb);
// end
// endmodule



`timescale 1ns/1ns
`include "samir.v"

module samir_tb;

    wire q;
    reg clk, d;

    latch uut(
        .q(q),
        .d(d),
        .clk(clk)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Monitor
        $monitor("time = %0t | clk = %0b | d = %0b | q = %0b",
                 $time, clk, d, q);

        // Initialize
        clk = 0;
        d = 0;

        // Test inputs
        #10 d = 1;
        #10 d = 0;

        #30 $finish;

    end

endmodule