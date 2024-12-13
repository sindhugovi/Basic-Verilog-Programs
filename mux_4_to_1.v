module mux_4_to_1(y,in,s);
    input [3:0]in;
    input [1:0]s;
    output y;
    assign y=in[s];
endmodule
