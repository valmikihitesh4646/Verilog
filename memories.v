// module memories;
// reg [7:0] membyte[0:1023];
// reg [7:0] data;

// initial begin    
// membyte[0] = 8'hAA;
// membyte[555] = 8'hFF;

// $display("membyte[0] is : %0d and  membyte[555] is : %0d",membyte[0],membyte[555]);
// end
// endmodule

module initilize_memory;
reg[7:0]  mem[255:0];
integer i;
initial begin
    
for( i =0; i < 256;i = i+1) begin

mem[i] = i;


end
$display("mem[0] = %0h   and mem[1] = %0h  and mem[255] = %0h",mem[0],mem[1],mem[255]);

end
endmodule

