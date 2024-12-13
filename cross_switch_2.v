module cross_switch_2(x1,x2,s,y1,y2);
    input x1,x2,s;
    output y1,y2;
    assign y1=((x1&~s)|(x2&s));
    assign y2=y1;
endmodule
