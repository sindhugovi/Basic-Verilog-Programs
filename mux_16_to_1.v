module mux16_to_1(y,in,s);
    input [15:0]in;
    input [3:0]s;
    output y;
    assign y=in[s];
endmodule
    
