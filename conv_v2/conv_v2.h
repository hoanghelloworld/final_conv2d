#ifndef FILTER_H
#define FILTER_H

#include "hls_stream.h"

#define WIN_SIZE 3
#define MAX_HEIGHT 5
#define MAX_WIDTH 5
inline int sum_window(int window[WIN_SIZE][WIN_SIZE], int y, int x);
void do_convolution(hls::stream<int>& out_stream, hls::stream<int>& in_stream);

#endif
