#include "conv_v1.h"
#define HALF_SIZE (((KERNEL_DIM) - 1) / 2)

inline bool bounds_ok(int y, int x)
{
  return (0 <= y && y < HEIGHT && 0 <= x && x < WIDTH);
}

// Tinh tong tich chap cua vung window va kernel.
inline int sumWindow(int window[KERNEL_DIM][KERNEL_DIM], int kernel[KERNEL_DIM][KERNEL_DIM], int y, int x)
{
  int result = 0; // Bien tich luy ket qua

  // Duyet qua tung phan tu cua window
  win_i : for (int i = -HALF_SIZE; i <= HALF_SIZE; i++)
    win_j : for (int j = -HALF_SIZE; j <= HALF_SIZE; j++)
      if (bounds_ok(y + i, x + j)) // Kiem tra bien
        result += window[i + HALF_SIZE][j + HALF_SIZE] * kernel[i + HALF_SIZE][j + HALF_SIZE]; // Nhan tich chap va cong don

  return result; // Tra ve ket qua
}

// Ham tinh tich chap 2D
void do_convolution(int data_out[HEIGHT][WIDTH],
                  const int data_in[HEIGHT][WIDTH],
                  int kernel[KERNEL_DIM][KERNEL_DIM])
{
  int window[KERNEL_DIM][KERNEL_DIM]; // Vung du lieu dau vao
 #pragma HLS ARRAY_PARTITION variable=window complete // Chi thi HLS toi uu truy cap vung nho

  // Duyet qua tung diem anh theo chieu cao
  for_y : for (int y = 0; y < HEIGHT; y++)
  {
    // Duyet qua tung diem anh theo chieu rong
    for_x : for (int x = 0; x < WIDTH; x++)
    {
 #pragma HLS PIPELINE // Chi thi HLS tao pipeline

      // Tai vung du lieu tu data_in vao window
      load_i : for (int i = -HALF_SIZE; i <= HALF_SIZE; i++)
        load_j : for (int j = -HALF_SIZE; j <= HALF_SIZE; j++)
          if (bounds_ok(y + i, x + j)) // Kiem tra pham vi
            window[i + HALF_SIZE][j + HALF_SIZE] = data_in[y + i][x + j];

      // Tinh gia tri dau ra bang cach goi ham sumWindow
      int val_out = sumWindow(window, kernel, y, x);
      data_out[y][x] = val_out; // Luu gia tri dau ra
    }
  }
}
