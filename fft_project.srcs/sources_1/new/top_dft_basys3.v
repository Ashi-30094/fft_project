`timescale 1ns / 1ps

module top_dft_basys3 (
    input clk  // Basys3の100MHzクロック
);
    // VIOからの出力（DFTへの入力）
    wire signed [15:0] x_re [0:3];
    wire signed [15:0] x_im [0:3];
    
    // DFTからの出力（VIOへの入力）
    wire signed [15:0] X_re [0:3];
    wire signed [15:0] X_im [0:3];

    // DFTモジュールの呼び出し
    dft_4pt u_dft (
        .x0_re(x_re[0]), .x0_im(x_im[0]),
        .x1_re(x_re[1]), .x1_im(x_im[1]),
        .x2_re(x_re[2]), .x2_im(x_im[2]),
        .x3_re(x_re[3]), .x3_im(x_im[3]),
        .X0_re(X_re[0]), .X0_im(X_im[0]),
        .X1_re(X_re[1]), .X1_im(X_im[1]),
        .X2_re(X_re[2]), .X2_im(X_im[2]),
        .X3_re(X_re[3]), .X3_im(X_im[3])
    );

    // ★ここを vio_1 に変更しました★
    vio_1 u_vio (
        .clk(clk),
        .probe_in0(X_re[0]), .probe_in1(X_im[0]),
        .probe_in2(X_re[1]), .probe_in3(X_im[1]),
        .probe_in4(X_re[2]), .probe_in5(X_im[2]),
        .probe_in6(X_re[3]), .probe_in7(X_im[3]),
        .probe_out0(x_re[0]), .probe_out1(x_im[0]),
        .probe_out2(x_re[1]), .probe_out3(x_im[1]),
        .probe_out4(x_re[2]), .probe_out5(x_im[2]),
        .probe_out6(x_re[3]), .probe_out7(x_im[3])
    );
endmodule