// this is a 5 - bit array multiplier
`include "full_adder.v"
module array_multiplier(x , y , product);
    input [4:0] x, y;
    output [9:0] product;

    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15;
    wire w16,w17,w18,w19,w20,w21,w22,w23,w25,w26,w27,w28,w29,w30;
    wire w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43,w44,w45;
    wire w46,w47,w48,w49,w50,w51,w52,w53,w54,w55;
    and a2(product[0], x[0], y[0]);
    and a3(w1, x[1], y[0]);
    and a4(w2, x[2], y[0]);
    and a5(w3, x[3], y[0]);
    and a6(w4, x[4], y[0]);
    and a7(w5, x[0], y[1]);
    and a8(w6, x[1], y[1]);
    and a9(w7, x[2], y[1]);
    and a10(w8, x[3], y[1]);
    and a11(w9, x[4], y[1]);
    
    half_adder h3(w1, w5, product[1], w10);
    full_adder f1(w2, w6, w10, w11, w12);
    full_adder f2(w3, w7, w12, w13, w14);
    full_adder f3(w4, w8, w14, w15, w16);
    half_adder h4(w9 , w16, w17, w18);

    and a12(w19, x[0], y[2]);
    and a13(w20, x[1], y[2]);
    and a14(w21, x[2], y[2]);
    and a15(w22, x[3], y[2]);
    and a16(w23, x[4], y[2]);

    half_adder h5(w11, w19, product[2], w25);
    full_adder f4(w13, w20, w25, w26, w27);
    full_adder f5(w15, w21, w27, w28, w29);
    full_adder f6(w17, w22, w29, w30, w31);
    full_adder f7(w18, w23, w31, w32, w33);

    and a17(w34, x[0], y[3]);
    and a18(w35, x[1], y[3]);
    and a19(w36, x[2], y[3]);
    and a20(w37, x[3], y[3]);
    and a21(w38, x[4], y[3]);

    half_adder h6(w26, w34, product[3], w39);
    full_adder f8(w28, w35, w39, w40, w41);
    full_adder f9(w30, w36, w41, w42, w43);
    full_adder f10(w32, w37, w43, w44, w45);
    full_adder f11(w33, w38, w45, w46, w47);

    and a22(w48, x[0],y[4]);
    and a23(w49, x[1],y[4]);
    and a24(w50, x[2],y[4]);
    and a25(w51, x[3],y[4]);
    and a26(w52, x[4],y[4]);

    half_adder h7(w40, w48, product[4], w52);
    full_adder f12(w42, w49, w52, product[5], w53);
    full_adder f13(w44, w50, w53, product[6], w54);
    full_adder f14(w46, w51, w54, product[7], w55);
    full_adder f15(w47, w52, w55, product[8], product[9]);
    
endmodule