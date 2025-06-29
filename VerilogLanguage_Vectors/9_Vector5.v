module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    wire[24:0] t1;
    assign t1= {5{a,b,c,d,e}};
    wire[24:0] t2;
    assign t2= {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}};
    assign out=~t1^t2;
    

endmodule