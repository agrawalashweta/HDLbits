module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire[15:0] s1;
    wire c1;
    add16 inst1(a[15:0],b[15:0],0,s1,c1);
    wire [15:0] s2;
    wire c2;
    add16 inst2(a[31:16],b[31:16],c1,s2,c2);
    assign sum={s2,s1};
    

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    xor g1(sum,a,b,cin);
    wire t1,t2,t3;
    and g2(t1,a,b);
    and g3(t2,a,cin);
    and g4(t3,b,cin);
    or g5(cout,t1,t2,t3);

endmodule