module digi_lock2(rst,clk,lock);
input rst,clk;
reg [2:0]key;
output reg lock;
reg d1,d2,d3;
parameter idle=2'b00,key1=2'b01,key2=2'b10,key3=2'b11;
reg [1:0]state;
always@(posedge(clk) or negedge(rst))
begin
   if(!rst)
   begin
       state<=idle;
       d1<=1'b1;
       d2<=1'b0;
       d3<=1'b1;
       lock<=1'b1;

   end
else
     begin
     case(state)
      idle:
      begin
      d1<=d1^d3;
      d2<=d1;
      d3<=d2;
      key<={d1,d2,d3};
     lock<=1'b1;
     if(key==3'b001)
     state<=key1;
     else
     state<=idle;
     end
     key1:
      begin
      d1<=d1^d3;
      d2<=d1;
      d3<=d2;
      key<={d1,d2,d3};
   
     lock<=1'b1;
    if(key==3'b101)
    state<=key2;
    else
    state<=key1;
    end
    key2:
     begin
      d1<=d1^d3;
      d2<=d1;
      d3<=d2;
      key<={d1,d2,d3};
 
    lock<=1'b1;
    if(key==3'b011)
    state<=key3;
   else
   state<=key2;
end
   key3:
   lock<=1'b0;
   
 default:
 state<=idle;
 endcase
end
end
endmodule
