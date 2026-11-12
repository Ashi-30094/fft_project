`timescale 1ns / 1ps

module dft_4pt (
    input  signed [15:0] x0_re, x0_im,
    input  signed [15:0] x1_re, x1_im,
    input  signed [15:0] x2_re, x2_im,
    input  signed [15:0] x3_re, x3_im,
    output signed [15:0] X0_re, X0_im,
    output signed [15:0] X1_re, X1_im,
    output signed [15:0] X2_re, X2_im,
    output signed [15:0] X3_re, X3_im
);
    assign X0_re = x0_re + x1_re + x2_re + x3_re;
    assign X0_im = x0_im + x1_im + x2_im + x3_im;
    
    assign X1_re = x0_re + x1_im - x2_re - x3_im;
    assign X1_im = x0_im - x1_re - x2_im + x3_re;
    
    assign X2_re = x0_re - x1_re + x2_re - x3_re;
    assign X2_im = x0_im - x1_im + x2_im - x3_im;
    
    assign X3_re = x0_re - x1_im - x2_re + x3_im;
    assign X3_im = x0_im + x1_re - x2_im - x3_re;
endmodule