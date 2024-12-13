module ripple_carry_adder_final(a,b,cin,sum,carry);
    input [7:0]a,b;
    input cin;
    output [7:0]sum;
    output carry;
    wire w1,w2,w3,w4,w5,w6,w7;
ripple_carry_adder g1(a[0],b[0],cin,sum[0],w1);
ripple_carry_adder g2(a[1],b[1],w1,sum[1],w2);
ripple_carry_adder g3(a[2],b[2],w2,sum[2],w3);
ripple_carry_adder g4(a[3],b[3],w3,sum[3],w4);
ripple_carry_adder g5(a[4],b[4],w4,sum[4],w5);
ripple_carry_adder g6(a[5],b[5],w5,sum[5],w6);
ripple_carry_adder g7(a[6],b[6],w6,sum[6],w7);
ripple_carry_adder g8(a[7],b[7],w7,sum[7],carry);

endmodule

