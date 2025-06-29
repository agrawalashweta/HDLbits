module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire[15:0] s1,s2,s3;
    wire c1,c2,c3;
    add16 inst1(a[15:0],b[15:0],0,s1,c1);
    add16 inst2(a[31:16],b[31:16],0,s2,c2);
    add16 inst3(a[31:16],b[31:16],1,s3,c3);
    assign sum= c1?{s3,s1}:{s2,s1};

endmodule