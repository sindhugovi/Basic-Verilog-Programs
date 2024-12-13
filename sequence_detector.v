module sequence_detector(in, clk, rst, detect);
  input in, clk, rst;
  output reg detect;
  reg [2:0] state; 
  integer count;    
  parameter idle = 3'b000, 
            s1   = 3'b001, 
            s2   = 3'b010, 
            s3   = 3'b011, 
            s4   = 3'b100, 
            s5   = 3'b101, 
            s6   = 3'b110;
  always @(posedge clk or negedge rst)
   begin
    if (!rst) begin
      state <= idle;
      detect <= 1'b0;
      count <= 0;  
    end
     else
      begin
      case (state)
        idle: 
        begin
          detect <= 1'b0;
          if (in == 1)
            state <= s1;
          else
            state <= idle;
        end
        
        s1:
         begin
          detect <= 1'b0;
          if (in == 0)
            state <= s2;
          else
            state <= idle;
        end
        
        s2: 
        begin
          detect <= 1'b0;
          if (in == 1)
            state <= s3;
          else
            state <= idle;
        end
        
        s3: 
        begin
          detect <= 1'b0;
          if (in == 1)
            state <= s4;
          else
            state <= idle;
        end
        
        s4: 
        begin
          detect <= 1'b0;
          if (in == 1)
            state <= s5;
          else
            state <= idle;
        end
        
        s5:
         begin
          detect <= 1'b0;
          if (in == 0)
            state <= s6;
          else
            state <= idle;
        end
        s6: 
        begin
          detect <= 1'b1;  
          count = count + 1;
          state <= idle;  
        end
      endcase
    end
  end
endmodule

