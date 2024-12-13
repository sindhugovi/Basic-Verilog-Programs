module alu_2(s,out,clk,rst);
    input clk,rst;
    reg [4:0]a[0:31];
    reg [4:0]b[0:31];
    input [2:0]s;
    reg [4:0]count1;
    output reg [32:0]out;
    always@(posedge(clk) or negedge(rst))
    begin
        if(!rst)
        begin
        count1<=32'd0;
        end
        else
        begin
            a[count1]=count1;
            b[count1]=count1;
            case(s)
        
            3'd0:
            out[count1]<=a[count1]+b[count1];
            3'd1:
            out[count1]<=a[count1]-b[count1];
            3'd2:
            out[count1]<=a[count1]^b[count1];
            3'd3:
            out[count1]<=a[count1]&b[count1];
            3'd4:
            out[count1]<=a[count1]|b[count1];
            3'd5:
            out[count1]<=~(a[count1]^b[count1]);
            3'd6:
            out[count1]<=~(a[count1]&b[count1]);
            3'd7:
            out[count1]<=~(a[count1]|b[count1]);
    endcase
                
            count1=count1+1;
        end
        
     end
endmodule
            
               
    
    
    
