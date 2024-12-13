module decoder_3_8(y,din);
    input [2:0]din;
    output reg [7:0]y;
    always@(din)
    begin
        if(din==1'd0)
        y[0]=1'b1;
        else if(din==1'd1)
        y[1]=1'b1;
        else if(din==1'd2)
        y[2]=1'b1;
        else if(din==1'd3)
        y[3]=1'b1;
        else if(din==1'd4)
        y[4]=1'b1;
        else if(din==1'd5)
        y[5]=1'b1;
        else if(din==1'd6)
        y[6]=1'b1;
        else 
        y[7]=1'b1;
end
endmodule
        
