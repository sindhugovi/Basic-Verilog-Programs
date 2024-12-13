module vending_machine(clk,rst,amt,coffee);
    input clk,rst;
    input [1:0]amt;
    output reg coffee;
    parameter ideal=3'b000,s5=3'b001,s10=3'b010,s15=3'b011,s20=3'b100;
    reg[2:0] state;
    always@(posedge(clk) or negedge(rst))
    begin
        if(!rst)
        state<=ideal;
        else
        begin
            case(state)
                ideal:
                begin
                    coffee<=1'b0;
                    if(amt==2'd0)
                    state<=s5;
                    else if(amt==2'd1)
                    state<=s10;
                    else if(amt==2'd2)
                    state<=s20;
                end
                s5:
                begin
                    coffee<=1'b0;
                    if(amt==2'd0)
                    state<=s10;
                    else if(amt==2'd1)
                    state<=s15;
                end
                s10:
                begin
                    coffee<=1'b0;
                    if(amt==2'd0)
                    state<=s15;
                    else if(amt==2'd1)
                    state<=s20;
                end
                s15:
                begin
                    if(amt==2'd0)
                    state<=s20;
                end
                
                s20:
                begin
                    coffee<=1'b1;
                    state<=ideal;
                end
                default
                state<=ideal;
        endcase
    end
end
endmodule
                
                
                
    
        
          
    
