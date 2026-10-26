// module que1(oscillate);

// output reg oscillate = 0;
// initial begin
// forever  #30 oscillate = ~oscillate;
// end
// endmodule

// module que2(clk);
// output reg clk = 0;
// initial begin
// forever begin 
//  //Time period means one complete cycle and trough.Duty cycle means, in one complete time period, how much time it is high. It is called duty cycle.   
// That is the duty cycle. If duty cycle is 25% That means in one complete cycle, only 25% is high, and the remaining 75% //


// #30 clk = 1;
// #10 clk = 0;
// end
// end
// endmodule

// module d_flipflop(q,d,clk,reset);
//    output reg q;
// input d,reset,clk;
// always @(negedge clk or negedge reset) begin
// if(reset)
// q<=1'b0;
// else
// q<=d;
// end
// endmodule

// module vending_machine_mealy (
//     input clk,                  // Clock signal
//     input reset,                // Reset signal
//     input [7:0] insert_cash,    // Cash inserted by user (8-bit value)
//     input [7:0] item_price,     // Price of the selected item
//     input item_available,       // Item availability flag
//     input select_item,          // Item selection input
//     input cancel,               // Transaction cancel input
//     output reg [7:0] dispensed_item,   // Dispensed item value (if any)
//     output reg [7:0] dispensed_change, // Change to be dispensed (if any)
//     output reg error            // Error flag (insufficient cash or unavailable item)
// );

//     // Define states with regular registers
//     reg [2:0] current_state, next_state;

//     // State definitions
//     parameter READY = 3'b000,
//               CASH_COLLECTED = 3'b001,
//               DISPENSE_CHANGE = 3'b010,
//               DISPENSE_ITEM = 3'b011,
//               TRANSACTION_CANCELLED = 3'b100;

//     // Sequential logic to update the state on clock edges
//     always @(posedge clk or posedge reset) begin
//         if (reset) begin
//             // Default outputs
//             dispensed_item = 8'b0;
//             dispensed_change = 8'b0;
//             error = 1'b0;
//             current_state <= READY;
//         end
//         else
//             current_state <= next_state;
//     end

//     // Combinational logic to determine next state and outputs
//     always @(insert_cash or item_price or item_available or select_item or cancel or current_state) begin

//         // Logic based on the current state
//         case (current_state)

//             READY: begin

//                 if (insert_cash > 0 && dispensed_change == 0 && dispensed_item == 0) begin
//                     $display("Cash collected select an Item");
//                     next_state = CASH_COLLECTED;
//                 end
//                 else
//                     next_state = READY;

//             end

//             CASH_COLLECTED: begin

//                 if (select_item && item_available && !cancel) begin
//                     $display("Item Selected");

//                     // Dispense the item
//                     if (insert_cash > item_price) begin
//                         $display("Cash Inserted is greater than Item price please collect change");
//                         next_state = DISPENSE_CHANGE;
//                     end
//                     else if (insert_cash == item_price) begin
//                         next_state = DISPENSE_ITEM;
//                     end
//                     else begin
//                         $display("Insufficient cash");
//                         error = 1'b1;
//                         next_state = TRANSACTION_CANCELLED;
//                     end
//                 end

//                 else if (cancel) begin
//                     $display("User Cancelled the transaction");
//                     next_state = TRANSACTION_CANCELLED;
//                 end

//                 else if (select_item && !item_available) begin
//                     $display("Selected Item is Unavailable");
//                     next_state = TRANSACTION_CANCELLED;
//                     error = 1'b1;
//                 end

//             end

//             DISPENSE_CHANGE: begin
//                 dispensed_change = insert_cash - item_price;

//                 $display("Change : %0d", dispensed_change);
//                 next_state = DISPENSE_ITEM;
//             end

//             DISPENSE_ITEM: begin
//                 $display("Dispensing Item");
//                 dispensed_item = 8'b1;
//                 next_state = READY;
//                 dispensed_change = 0;
//             end

//             TRANSACTION_CANCELLED: begin
//                 $display("Transaction Cancelled,Collect Cash");
//                 dispensed_change = insert_cash;
//                 next_state = READY;
//             end

//             default: begin
//                 next_state = READY;
//                 dispensed_item = 8'b0;
//                 dispensed_change = 8'b0;
//                 error = 1'b0;
//             end

//         endcase

//     end

// endmodule


// // Traffic Signal Controller

// // moore_FSM

// // Define constants
// `define TRUE  1'b1
// `define FALSE 1'b0

// // Define delays
// `define Y2RDELAY 3   // Yellow to Red delay
// `define R2GDELAY 2   // Red to Green delay

// module sig_control (
//     output reg [1:0] hwy, cntry,  // 2-bit signal states
//     input X,                       // Car presence on country road
//     input clock, clear             // Clock and Reset
// );

// // State Definitions
// parameter RED = 2'd0,
//           YELLOW = 2'd1,
//           GREEN = 2'd2;

// // State Encoding
// parameter S0 = 3'd0, // HWY: Green
//           S1 = 3'd1, // HWY: Yellow
//           S2 = 3'd2, // HWY: Red, CNTRY: Red
//           S3 = 3'd3, // HWY: Red, CNTRY: Green
//           S4 = 3'd4; // HWY: Red, CNTRY: Yellow

// // Internal state registers
// reg [2:0] state, next_state;

// // State transition logic
// always @(posedge clock or posedge clear) begin
//     if (clear)
//         state <= S0; // Start in S0
//     else
//         state <= next_state;
// end

// // Compute traffic light outputs based on current state
// always @(state) begin
//     hwy = GREEN;  // Default highway light
//     cntry = RED;  // Default country light

//     case (state)
//         S0: ; // No change, default state

//         S1:
//             hwy = YELLOW;

//         S2:
//             hwy = RED;

//         S3: begin
//             hwy = RED;
//             cntry = GREEN;
//         end

//         S4: begin
//             hwy = RED;
//             cntry = YELLOW;
//         end
//     endcase
// end

// // Next state logic
// always @(state or X) begin
//     case (state)

//         S0:
//             if (X)
//                 next_state = S1;
//             else
//                 next_state = S0;

//         S1: begin
//             repeat(`Y2RDELAY) @(posedge clock);
//             next_state = S2;
//         end

//         S2: begin
//             repeat(`R2GDELAY) @(posedge clock);
//             next_state = S3;
//         end

//         S3:
//             if (X)
//                 next_state = S3;
//             else begin
//                 repeat(`Y2RDELAY) @(posedge clock);
//                 next_state = S4;
//             end

//         S4: begin
//             repeat(`Y2RDELAY) @(posedge clock);
//             next_state = S0;
//         end

//         default:
//             next_state = S0;

//     endcase
// end

// endmodule

// last video verilog 
module latch(q,d,clk);
output reg q;
input clk,d;

always @ (d or clk)
wait (clk = 1)
q = d;
end
 endmodule
