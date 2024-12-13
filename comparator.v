module comparator(y,a,b);
    input a,b;
    output reg y;
    always@(a,b)
    begin
        if(a<b)
        y=~a&b;
        else if(a>b)
        y=a&~b;
        else
        y=a~^b;
end
endmodule
    
