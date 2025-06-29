module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire[7:0] q1;
    my_dff8 ff1(clk,d,q1);
    wire[7:0] t1;
    assign t1=q1;
    wire[7:0] q2;
    my_dff8 ff2(clk,t1,q2);
    wire[7:0] t2;
    assign t2=q2;
    wire[7:0] q3;
    my_dff8 ff3(clk,t2,q3);
    always @(*) begin
        case(sel)
            2'b00: q=d;
            2'b01: q=q1;
            2'b10: q=q2;
            2'b11: q=q3;
        endcase
    end

endmodule