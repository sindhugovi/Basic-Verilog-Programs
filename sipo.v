module sipo(clk,rst,si,so);
    input clk,rst,si;
    output reg so;
    reg [3:0]d;
    always@(posedge(clk) or negedge(rst))
    begin
        if(!rst)
        begin
            {d[0],d[1],d[2],d[3]}=0;
        end
        else
        begin
            d[0]<=si;
            d[1]<=d[0];
            d[2]<=d[1];
            d[3]<=d[2];
         end
          so=d[3];
    end
   
endmodule


            
    
    
