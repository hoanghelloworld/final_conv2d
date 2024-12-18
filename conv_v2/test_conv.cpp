#include <iostream>
#include "conv_v2.h"
#include "hls_stream.h"


#define WIDTH 5
#define HEIGHT 5

// Kernel duoc su dung cho phep convolution
int kernel_test[WIN_SIZE][WIN_SIZE] = {
    {1, 2, -1},
    {2, 3, -2},
    {1, 4, -1}
  };

// Ham thuc hien convolution tham chieu (reference) bang phuong phap lap trinh thuong
void ref_convolution(int *data_out, const int data_in[HEIGHT][WIDTH], int kernel[WIN_SIZE][WIN_SIZE], int out_height, int out_width) {
    for (int y = 0; y < out_height; y++) {
        for (int x = 0; x < out_width; x++) {
            int sum = 0;
            for (int i = 0; i < WIN_SIZE; i++) {
                for (int j = 0; j < WIN_SIZE; j++) {
                    sum += data_in[y + i][x + j] * kernel[i][j];
                }
            }
            data_out[y * out_width + x] = sum;
        }
    }
}

int main() {
  // Ma tran dau vao
  int data_in[HEIGHT][WIDTH] = {
    {1, 2, 3, 4, 5},
    {6, 7, 8, 9, 10},
    {11, 12, 13, 14, 15},
    {16, 17, 18, 19, 20},
    {21, 22, 23, 24, 25}
  };

  // Stream dau vao
  hls::stream<int> in_stream;
  for (int y = 0; y < HEIGHT; y++) {
    for (int x = 0; x < WIDTH; x++) {
      in_stream.write(data_in[y][x]); // Dua du lieu vao stream
    }
  }

  // Stream dau ra
  hls::stream<int> out_stream;

  // Goi ham convolution su dung kernel
  do_convolution(out_stream, in_stream);

  // Tinh toan kich thuoc ma tran dau ra
  int out_height = HEIGHT;
  int out_width = WIDTH;

  // Doc du lieu dau ra tu ham HLS
  int hls_output[out_height][out_width];
  int k = 0; // Bien dem de doc out_stream theo thu tu
  for (int y = 0; y < out_height; y++) {
    for (int x = 0; x < out_width; x++) {
        hls_output[y][x] = out_stream.read(); // Lay du lieu tu stream
        k++;
    }
  }

  // In ket qua convolution bang HLS
  std::cout << "HLS Output (after filtering):" << std::endl;
  for (int y = 0; y < out_height - WIN_SIZE + 1; y++) {
      for (int x = 0; x < out_width - WIN_SIZE + 1; x++) {
          std::cout << hls_output[y + WIN_SIZE / 2][x + WIN_SIZE / 2] << " ";
      }
      std::cout << std::endl;
  }

  // Thuc hien convolution tham chieu
  int ref_output[out_height * out_width];
  ref_convolution(ref_output, data_in, kernel_test, out_height, out_width);

  // In ket qua convolution tham chieu
  std::cout << "Convolution Output (Reference):" << std::endl;
  for (int y = 0; y < HEIGHT - WIN_SIZE + 1; y++) {
    for (int x = 0; x < WIDTH - WIN_SIZE + 1; x++) {
      std::cout << ref_output[y * out_width + x] << " ";
    }
    std::cout << std::endl;
  }

  return 0;
}
