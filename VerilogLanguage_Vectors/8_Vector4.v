module top_module (
    input [7:0] in,
    output [31:0] out );//

    // assign out = { replicate-sign-bit , the-input };
    assign out[31:8]={24{in[7]}};
    assign out[7:0]=in;

endmodule