module parameters;
parameter port_id = 5;

parameter cache_line_width = 256;
parameter  signed[15:0] WIDTH =16;
initial begin
    port_id = 4;   //error comes bcz in the parameters we cannot change  the parameters values inside the module//

end



initial 
$display("port  id = %0d  and cache line width is %0d  and signed width is %0d",port_id, cache_line_width,WIDTH[15:0] );

endmodule