module frequency_div(clk,rst,led);
    input clk,rst;
    
    output reg led;
    integer big_c;
    reg clk_1hz;
    always@(posedge(clk) or negedge(rst))
    begin
        if(!rst)
        big_c=0;
        else
        begin
            big_c=big_c+1;
            if(big_c>=0&&big_c<50000000)
            clk_1hz=1'b0;
            else if(big_c>=50000000&&big_c<100000000)
            clk_1hz=1'b1;
            else if(big_c==100000000)
            big_c=0;
        end
    end
    
    always@(posedge(clk_1hz)or negedge(rst))
    begin
        if(!rst)
        led=1'b0;
        else
        led=~led;
    end
endmodule
        
        
