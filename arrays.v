module arrays ;
integer count [0:7];
initial begin
    count[0] = 5; 
count[1] = 10;

$display("count[0] : %0x   and   count[1] : %0x",count[0],count[1]);


end
endmodule

//2d array

// module arrays_2d;
// integer matrix[2:0][0:3];
// initial begin
// matrix[0][0] = 44;

// matrix[0][1] = 47;
// matrix[1][0] = 4;


// $display("matrix[0][0] = %0b   and   matrix[0][1] = %0b and matrix[1][0] = %0b",matrix[0][0],matrix[0][1] ,matrix[1][0]);


// end
// endmodule