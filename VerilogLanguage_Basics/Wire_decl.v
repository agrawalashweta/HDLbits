`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire t1;
    assign t1= a&b;
    wire t2;
    assign t2=c&d;
    assign out= (t1|t2);
    assign out_n= ~(t1|t2);

endmodule