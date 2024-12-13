module one_bit_comp(a,b,eq,gt,lt);
    input a,b;
    output reg eq,lt,gt;
    always@(a,b)
    begin
        if(a<b)
        lt=~a&b;
        else if(a==b)
        eq=~(a^b);
        else
        gt=a&~b;
    end
endmodule
    
