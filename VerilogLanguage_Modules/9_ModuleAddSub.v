module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire[31:0] b_xor;
    assign b_xor=b^{32{sub}};
    wire[15:0] s1,s2;
    wire c1,c2;
    add16 inst1(a[15:0],b_xor[15:0],sub,s1,c1);
    add16 inst2(a[31:16],b_xor[31:16],c1,s2,c2);
    assign sum={s2,s1};

endmodule
