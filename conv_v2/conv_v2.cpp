#include "hls_stream.h"
#include "conv_v2.h"

#define HALF_SIZE (((WIN_SIZE) - 1) / 2)
int kernel[WIN_SIZE][WIN_SIZE] = {
    {1, 2, -1},
    {2, 3, -2},
    {1, 4, -1}
  };

// Ham kiem tra diem (y, x) co nam trong gioi han khong
inline bool bounds_ok(int y, int x)
{
  return (0 <= y && y < MAX_HEIGHT && 0 <= x && x < MAX_WIDTH);
}

// Ham tinh tong gia tri cua mot cua so (window) voi kernel
inline int sum_window(int window[WIN_SIZE][WIN_SIZE], int y, int x)
{
    int result = 0;

    win_i : for (int i = -HALF_SIZE; i <= HALF_SIZE; i++)
    {
        win_j : for (int j = -HALF_SIZE; j <= HALF_SIZE; j++)
        {
            if (bounds_ok(y + i, x + j))
            {
                result += window[i + HALF_SIZE][j + HALF_SIZE] * kernel[i + HALF_SIZE][j + HALF_SIZE];
            }
        }
    }

    return result;
}

// Thuc hien phep convolution 2D su dung buffer
void do_convolution(hls::stream<int>& out_stream, hls::stream<int>& in_stream)
{
  int line_buf[WIN_SIZE - 1][MAX_WIDTH]; // Buffer luu tru hang
  int window[WIN_SIZE][WIN_SIZE];       // Cua so tinh toan
  int right[WIN_SIZE];                  // Cot phai cua cua so
#pragma HLS ARRAY_PARTITION variable=line_buf complete dim=1
#pragma HLS ARRAY_PARTITION variable=window complete dim=0
#pragma HLS ARRAY_PARTITION variable=right complete

  // Doc gia tri ban dau vao buffer hang
  int read_count = MAX_WIDTH * HALF_SIZE + HALF_SIZE + 1;
  buf_x1 : for (int x = MAX_WIDTH - HALF_SIZE - 1; x < MAX_WIDTH; x++)
#pragma HLS PIPELINE II=1
    line_buf[HALF_SIZE - 1][x] = in_stream.read();
  buf_y : for (int y = HALF_SIZE; y < WIN_SIZE - 1; y++)
    buf_x2 : for (int x = 0; x < MAX_WIDTH; x++)
#pragma HLS PIPELINE II=1
      line_buf[y][x] = in_stream.read();

  // Sao chep gia tri ban dau vao cua so
  win_y : for (int y = HALF_SIZE; y < WIN_SIZE; y++)
    win_x : for (int x = HALF_SIZE; x < WIN_SIZE; x++)
#pragma HLS PIPELINE II=1
      window[y][x] = line_buf[y - 1][x + MAX_WIDTH - WIN_SIZE];

  // Bat dau thuc hien convolution
  for_y : for (int y = 0; y < MAX_HEIGHT; y++)
  {
    for_x : for (int x = 0; x < MAX_WIDTH; x++)
    {
#pragma HLS PIPELINE II=1   // Tinh gia tri dau ra bang kernel
      int val_out = sum_window(window, y, x);

      // Ghi gia tri dau ra
      out_stream.write(val_out);

      // Dich cot cua buffer len
      right[0] = line_buf[0][x];
      for (int y = 1; y < WIN_SIZE - 1; y++)
        right[y] = line_buf[y - 1][x] = line_buf[y][x];

      // Doc gia tri dau vao
      int val_in = 0;
      if (read_count < MAX_HEIGHT * MAX_WIDTH)
      {
        val_in = in_stream.read();
        read_count++;
      }
      right[WIN_SIZE - 1] = line_buf[WIN_SIZE - 2][x] = val_in;

      // Dich cua so sang trai
      for (int y = 0; y < WIN_SIZE; y++)
        for (int x = 0; x < WIN_SIZE - 1; x++)
          window[y][x] = window[y][x + 1];

      // Cap nhat cot phai cua cua so
      for (int y = 0; y < WIN_SIZE; y++)
        window[y][WIN_SIZE - 1] = right[y];
    }
  }
}
