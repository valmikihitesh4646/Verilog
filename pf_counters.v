// module pf_counters(q2,q1,q0,clear,clk);

// output reg q2,q1,q0;

// input clk;

// output clear;

// assign clear = ~q2 & q1 & q0;   // Detect 011


// initial begin
//     q0 = 0;
//     q1 = 0;
//     q2 = 0;
// end


// // Q0
// always @(posedge clk or posedge clear)
// begin
//     if(clear)
//         q0 <= 0;
//     else
//         q0 <= ~q0;
// end


// // Q1
// always @(posedge q0 or posedge clear)
// begin
//     if(clear)
//         q1 <= 0;
//     else
//         q1 <= ~q1;
// end


// // Q2
// always @(posedge q1 or posedge clear)
// begin
//     if(clear)
//         q2 <= 0;
//     else
//         q2 <= ~q2;
// end

// endmodule

// //mod12 asynch nonbinary down counter all states set at starting
// module mod12_aynch_down(q0,q1,q2,q3,preset,clk);
// output  reg q0,q1,q2,q3;
// input clk;
// output preset;

// assign preset = ~q3 & ~q2;
// initial begin
//     q0 = 1;
//     q1 = 1;
//     q2 = 1;
//     q3 = 1;
// end

// always @(posedge clk or posedge preset)begin
//     if(preset)
//     q0 <= 1;
// else
// q0 <= ~q0;
// end

// always @(posedge q0 or posedge preset)begin
//     if(preset)
//     q1 <= 1;
// else
// q1 <= ~q1;
// end

// always @(posedge q1 or posedge preset)begin
//     if(preset)
//     q2 <= 1;
// else
// q2 <= ~q2;
// end

// always @(posedge q2 or posedge preset)begin
//     if(preset)
//     q3 <= 1;
// else
// q3 <= ~q3;
// end
// endmodule


// ///mod12 asynch nonbinary down counter all states RESET at starting
// module mod12_aynch_down(q0,q1,q2,q3,clear,clk);
// output  reg q0,q1,q2,q3;
// input clk;
// output clear;

// assign clear = ~q3 & q2 & ~q1 & ~q0;
// initial begin
//     q0 = 0;
//     q1 = 0;
//     q2 = 0;
//     q3 = 0;
// end

// always @(posedge clk or posedge clear)begin
//     if(clear)
//     q0 <= 0;
// else
// q0 <= ~q0;
// end

// always @(posedge q0 or posedge clear)begin
//     if(clear)
//     q1 <= 0;
// else
// q1 <= ~q1;
// end

// always @(posedge q1 or posedge clear)begin
//     if(clear)
//     q2 <= 0;
// else
// q2 <= ~q2;
// end

// always @(posedge q2 or posedge clear)begin
//     if(clear)
//     q3 <= 0;
// else
// q3 <= ~q3;
// end
// endmodule



///mod4 asynch nonbinary down counter all states SET at starting
// module mod4_downcounter(q2,q1,q0,preset,clk);
// output preset;
// output reg q2,q1,q0;
// input clk;

// assign preset = ~q2 & q1;
// initial begin
//    q2 = 1; 
// q1= 1;
// q0 = 1;
// end

// always @(posedge clk or posedge preset) begin
//   if(preset)
//   q0 <= 1;  
// else
// q0 <= ~q0;
// end

// always @(posedge q0 or posedge preset) begin
//   if(preset)
//   q1 <= 1;  
// else
// q1 <= ~q1;
// end

// always @(posedge q1 or posedge preset) begin
//   if(preset)
//   q2 <= 1;  
// else
// q2 <= ~q2;
// end
// endmodule

// ////mod5  asynch nonbinary UPP counter all states reset at starting
// module mod5_aynch_up(q0,q1,q2,clear,clk);
// output  reg q0,q1,q2;
// input clk;
// output clear;

// assign clear = q2 & q0;  //clear should be one when 101 comes 
// initial begin
//     q0 = 0;
//     q1 = 0;
//     q2 = 0;

// end

// always @(posedge clk or posedge clear)begin
//     if(clear)
//     q0 <= 0;
// else
// q0 <= ~q0;
// end

// always @(negedge q0 or posedge clear)begin
//     if(clear)
//     q1 <= 0;
// else
// q1 <= ~q1;
// end

// always @(negedge q1 or posedge clear)begin
//     if(clear)
//     q2 <= 0;
// else
// q2 <= ~q2;
// end

// endmodule




// // ///mod12 asynch nonbinary UPP counter all states RESET at starting
// module mod12_aynch_up(q0,q1,q2,q3,clear,clk);
// output  reg q0,q1,q2,q3;
// input clk;
// output clear;

// assign clear = q3 & q2 & ~q1  & ~q0 ;
// initial begin
//     q0 = 0;
//     q1 = 0;
//     q2 = 0;
//     q3 = 0;
// end

// always @(posedge clk or posedge clear)begin
//     if(clear)
//     q0 <= 0;
// else
// q0 <= ~q0;
// end

// always @(negedge q0 or posedge clear)begin
//     if(clear)
//     q1 <= 0;
// else
// q1 <= ~q1;
// end

// always @(negedge q1 or posedge clear)begin
//     if(clear)
//     q2 <= 0;
// else
// q2 <= ~q2;
// end

// always @(negedge q2 or posedge clear)begin
//     if(clear)
//     q3 <= 0;
// else
// q3 <= ~q3;
// end
// endmodule



// ///mod12 asynch nonbinary UPP counter all states SET at starting
// module mod12_aynch_up(q0,q1,q2,q3,preset,clk);
// output  reg q0,q1,q2,q3;
// input clk;
// output preset;

// assign preset = q3 & ~q2 & q1  & q0 ;
// initial begin
//     q0 = 1;
//     q1 = 1;
//     q2 = 1;
//     q3 = 1;
// end

// always @(posedge clk or posedge preset)begin
//     if(preset)
//     q0 <= 1;
// else
// q0 <= ~q0;
// end

// always @(negedge q0 or posedge preset)begin
//     if(preset)
//     q1 <= 1;
// else
// q1 <= ~q1;
// end

// always @(negedge q1 or posedge preset)begin
//     if(preset)
//     q2 <= 1;
// else
// q2 <= ~q2;
// end

// always @(negedge q2 or posedge preset)begin
//     if(preset)
//     q3 <= 1;
// else
// q3 <= ~q3;
// end
// endmodule



// ///mod12 asynch nonbinary UPP counter all states RESET at starting
module mod10_aynch_up(q0,q1,q2,q3,clear,clk);
output  reg q0,q1,q2,q3;
input clk;
output clear;

assign clear = q3 & ~q2 & q1 & ~q0;
initial begin
    q0 = 0;
    q1 = 0;
    q2 = 0;
    q3 = 0;
end

always @(posedge clk or posedge clear)begin
    if(clear)
    q0 <= 0;
else
q0 <= ~q0;
end

always @(negedge q0 or posedge clear)begin
    if(clear)
    q1 <= 0;
else
q1 <= ~q1;
end

always @(negedge q1 or posedge clear)begin
    if(clear)
    q2 <= 0;
else
q2 <= ~q2;
end

always @(negedge q2 or posedge clear)begin
    if(clear)
    q3 <= 0;
else
q3 <= ~q3;
end
endmodule




