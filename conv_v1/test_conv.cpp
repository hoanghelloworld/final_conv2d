#include <stdio.h>
#include "conv_v1.h"
#include <iostream>

// Ham in ma tran ra man hinh
void printMatrix(const char *title, const int *matrix, int rows, int cols) {
    printf("%s\n", title);
    printf("----------------------------------\n");

    int validRows = rows - KERNEL_DIM + 1;
    int validCols = cols - KERNEL_DIM + 1;
    int offset = (KERNEL_DIM - 1) / 2;

    for (int i = 0; i < validRows; i++) {
        printf("ROW: %02d --->  ", i);
        for (int j = 0; j < validCols; j++) {
            printf(" %04d ", matrix[(i + offset) * cols + (j + offset)]);
        }
        printf("\n");
    }
    printf("\n");
}

// Ham tinh tong tich chap giua kernel va window
int applyKernelToWindow(const int *kernel, const int *window, int kSize) {
    int accumulator = 0; // Bien tich luy

    // Duyet qua tung phan tu cua kernel va window
    for (int idx = 0; idx < kSize * kSize; idx++) {
        accumulator += (kernel[idx] * window[idx]); // Nhan va cong don
    }
    return accumulator; // Tra ve ket qua
}

// Ham tinh tich chap 2D thu cong
void handcraftedConv2D(const int *matrixIn, int *matrixOut, const int kernel[][KERNEL_DIM],
                       int kSize, int height, int width) {
    int accConvolution = 0; // Bien tich luy ket qua tich chap
    int samplingWindow[KERNEL_DIM * KERNEL_DIM]; // Mang luu vung lay mau

    // Duyet qua tung dong cua ma tran dau vao
    for (int rows = 0; rows < height; rows++) {
        // Duyet qua tung cot cua ma tran dau vao
        for (int cols = 0; cols < width; cols++) {
            accConvolution = 0; // Dat lai gia tri tich luy

            // Lay mau vung xung quanh diem anh hien tai
            for (int rowsWindow = 0; rowsWindow < kSize; rowsWindow++) {
                for (int colsWindow = 0; colsWindow < kSize; colsWindow++) {
                    // Tinh toan vi tri diem anh trong ma tran dau vao
                    int repos_row = rows - (kSize - 1) / 2 + rowsWindow;
                    int repos_col = cols - (kSize - 1) / 2 + colsWindow;
                    int currPixVal = 0; // Gia tri diem anh

                    // Kiem tra xem vi tri co nam trong pham vi ma tran khong
                    if (repos_row >= 0 && repos_row < height && repos_col >= 0 && repos_col < width) {
                        currPixVal = *(matrixIn + repos_row * width + repos_col);
                    }
                    samplingWindow[rowsWindow * kSize + colsWindow] = currPixVal; // Luu gia tri vao vung lay mau
                }
            }

            // Tinh tich chap giua vung lay mau va kernel
            accConvolution = applyKernelToWindow((const int *)kernel, samplingWindow, kSize);

            matrixOut[rows * width + cols] = accConvolution; // Luu ket qua vao ma tran dau ra
        }
    }
}

// Kernel
int kernel[KERNEL_DIM][KERNEL_DIM] = {
    1, 2, -1,
    2, 3, -2,
    1, 4, -1
};

int main() {
    // Dinh nghia ma tran dau vao va dau ra
    int input[HEIGHT][WIDTH] = {
        {1, 2, 3, 4, 5},
        {6, 7, 8, 9, 10},
        {11, 12, 13, 14, 15},
        {16, 17, 18, 19, 20},
        {21, 22, 23, 24, 25}
    };
    int output[HEIGHT][WIDTH] = {0};
    int output_ref[HEIGHT][WIDTH] = {0};

    // Thuc hien tich chap tren core
    printf("Goi ham Core\n");
    do_convolution(output, input, kernel); // Goi ham tich chap
    printf("Ham Core ket thuc\n");

    // In ma tran dau ra
    printf("Ma tran dau ra:\n");
    printMatrix("Ket qua Core", (int *)output, HEIGHT, WIDTH); // In ket qua tu core

    // Thuc hien tich chap (Tham chieu)
    printf("Goi ham tham chieu\n");
    handcraftedConv2D((int *)input, (int *)output_ref, kernel, KERNEL_DIM, HEIGHT, WIDTH); // Goi ham tich chap thu cong
    printf("Ham tham chieu ket thuc\n");
    printMatrix("Ket qua tham chieu", (int *)output_ref, HEIGHT, WIDTH); // In ket qua tich chap thu cong

    // Kiem tra loi
    bool error_found = false;
    for(int i = 0; i < HEIGHT; i++){
        for(int j = 0; j < WIDTH; j++){
            if(output[i][j] != output_ref[i][j]){
                std::cerr << "Loi tai vi tri (y, x) = (" << i << ", " << j << "): "
                          << "Ket qua Core = " << output[i][j]
                          << ", Ket qua tham chieu = " << output_ref[i][j] << std::endl;
                error_found = true;
            }
        }
    }

    if (!error_found) {
        std::cout << "Ket qua khop: Ket qua Core giong ket qua tham chieu." << std::endl;
    } else {
        std::cerr << "Ket qua khong khop: Co su khac biet giua ket qua Core va ket qua tham chieu." << std::endl;
    }

    return error_found ? 1 : 0;
}