#ifndef __CONV_V1_H__
#define __CONV_V1_H__

#include <hls_video.h> 
#include <ap_axi_sdata.h> 

// kich thuoc matrixmatrix
#define WIDTH 5
#define HEIGHT 5

// kich thuoc kernel
#define KERNEL_DIM 3

// khai bao ham do_convolution
void do_convolution(int data_out[HEIGHT][WIDTH], const int data_in[HEIGHT][WIDTH], int kernel[KERNEL_DIM][KERNEL_DIM]);

// khai bao ham inline
inline bool bounds_ok(int y, int x);
inline int sumWindow(int window[KERNEL_DIM][KERNEL_DIM], int kernel[KERNEL_DIM][KERNEL_DIM], int y, int x);

#endif /* __CONV_V1_H__ */