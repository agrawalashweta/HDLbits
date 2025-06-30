module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    integer i;
    reg[99:0] intsum;
    reg[99:0] intcout;
    always @(*)
        begin
            for(i=0;i<100;i=i+1)
                begin
                    intsum[i]= i==0?(a[i]^b[i]^cin):(a[i]^b[i]^intcout[i-1]);
                    intcout[i]= i==0?((a[i]&b[i]) | (a[i]&cin) | (b[i]&cin)):((a[i]&b[i]) | (a[i]&intcout[i-1])|(b[i]&intcout[i-1]));
                end
        end
    assign sum=intsum;
    assign cout=intcout;
                    
                    

endmodule