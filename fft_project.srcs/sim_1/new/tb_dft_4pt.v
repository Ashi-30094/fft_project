`timescale 1ns / 1ps

module tb_dft_4pt();
    reg signed [15:0] x_re [0:3], x_im [0:3];
    wire signed [15:0] X_re [0:3], X_im [0:3];

    dft_4pt uut (
        .x0_re(x_re[0]), .x0_im(x_im[0]),
        .x1_re(x_re[1]), .x1_im(x_im[1]),
        .x2_re(x_re[2]), .x2_im(x_im[2]),
        .x3_re(x_re[3]), .x3_im(x_im[3]),
        .X0_re(X_re[0]), .X0_im(X_im[0]),
        .X1_re(X_re[1]), .X1_im(X_im[1]),
        .X2_re(X_re[2]), .X2_im(X_im[2]),
        .X3_re(X_re[3]), .X3_im(X_im[3])
    );

    initial begin
        x_re[0] = 16'd0; x_im[0] = 16'd0;
        x_re[1] = 16'd1; x_im[1] = 16'd0;
        x_re[2] = 16'd0; x_im[2] = 16'd0;
        x_re[3] = -16'd1;x_im[3] = 16'd0;

        #10;
        $display("X[0] = %d + %dj", X_re[0], X_im[0]);
        $display("X[1] = %d + %dj", X_re[1], X_im[1]);
        $display("X[2] = %d + %dj", X_re[2], X_im[2]);
        $display("X[3] = %d + %dj", X_re[3], X_im[3]);
        $finish;
    end
endmodule