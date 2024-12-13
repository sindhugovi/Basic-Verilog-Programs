module four_bit_comp(a,b,eq,gt,lt);
    input [3:0]a,b;
    output eq,gt,lt;
    wire [2:0]eq1,gt1,lt1
    one_bit_comp g1(a[3],b[3],eq1[2],gt1[2],lt1[2]);
    one_bit_comp g2(a[2],b[2],eq1[1],gt1[1],lt1[1]);
    one_bit_comp g3(a[1],b[1],eq1[0],gt1[0],lt1[0]);
    one_bit_comp g4(a[0],b[0],eq,gt,lt);
    assign eq = eq1[3] & eq1[2] & eq1[1] & eq1[0];
    assign lt= (a[3] < b[3]) || ((a[3] == b[3]) && (a[2] < b[2])) ||
                ((a[3] == b[3]) && (a[2] == b[2]) && (a[1] < b[1])) ||
                ((a[3] == b[3]) && (a[2] == b[2]) && (a[1] == b[1]) && (a[0] < b[0]));
    assign gt= ~eq & ~lt;

endmodule
    
    
    
