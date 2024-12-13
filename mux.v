module mux(y,b,s);
    input b;
    input [1:0]s;
    output y;
    reg y;
    always@(b,s)
    begin
        if(s==2'd0)
        y=b;
        else if(s==2'd1)
        y=~b;
        else if(s==2'd2)
        y=0;
        else
        y=1;
end
endmodule
 
