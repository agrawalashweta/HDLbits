module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire[15:0] s1;
    wire c1;
    add16 inst1(a[15:0],b[15:0],0,s1,c1);
    wire[15:0] s2;
    wire c2;
    add16 inst2(a[31:16],b[31:16],c1,s2,c2);
    assign sum={s2,s1};

endmodule