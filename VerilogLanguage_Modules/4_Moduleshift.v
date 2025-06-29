module top_module ( input clk, input d, output q );
    wire q1;
    my_dff ff1(clk,d,q1);
    wire t1;
    assign t1=q1;
    wire q2;
    my_dff ff2(clk,t1,q2);
    wire t2;
    assign t2=q2;
    my_dff ff3(clk,t2,q);

endmodule