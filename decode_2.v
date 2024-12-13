module decode_2(y,d1,d2);
    input d1,d2;
    output reg y;
    always@(d1,d2)
    begin
        if((d1==0)&&(d2==0))
        y=0;
        else if((d1==0)&&(d2==1))
        y=0;
        else if((d1==1)&&(d2==0))
        y=1;
        else
        y=1;
end
endmodule
        
    
    
