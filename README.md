# Triển khai thuật toán Convolution 2D trên phần cứng FPGA

## Giới thiệu

Dự án này tập trung vào việc thiết kế và triển khai một mô-đun phần cứng để thực hiện phép tính **tích chập 2 chiều (2D Convolution)** giữa một hình ảnh đầu vào và một ma trận kernel.  
Mục tiêu là xây dựng một bộ tăng tốc phần cứng hiệu quả cho phép tính nhân chập 2D, được tối ưu hóa về **hiệu suất** và **tài nguyên phần cứng** trên nền tảng **FPGA Zynq-7000**.

Phương pháp sử dụng:  
- **Tổng hợp mức cao (High-Level Synthesis - HLS)**: Thiết kế phần cứng từ các mô tả mức cao như C/C++.  
Phương pháp này giúp:  
  - Rút ngắn thời gian phát triển.  
  - Dễ dàng tối ưu hóa thiết kế.

---

## Yêu cầu

1. Xây dựng thuật toán thực hiện phép tính tích chập 2D.  
2. Xây dựng mô hình C cho thuật toán và kiểm chứng bằng testbench.  
3. Sử dụng **Vivado HLS** để tổng hợp mô hình C thành thiết kế RTL.  
4. Tối ưu hóa thiết kế để đạt hiệu năng cao trên nền tảng **Zynq-7000**.  
5. Đánh giá hiệu năng của thiết kế thông qua mô phỏng và thực thi.

---

## Thuật toán nhân chập 2D

### Mô tả  
Phép nhân chập 2D trượt một ma trận kernel (bộ lọc) qua một ma trận đầu vào (ảnh) để tạo ra ma trận đầu ra (**feature map**).  
Mỗi phần tử của feature map được tính bằng cách:  
- Nhân từng phần tử của kernel với các phần tử tương ứng của vùng ảnh nằm dưới kernel.  
- Cộng tổng các tích lại.

### Ký hiệu  
- **I**: Ma trận đầu vào (ảnh), kích thước \( H \times W \).  
- **K**: Ma trận kernel, kích thước \( K_h \times K_w \).  
- **O**: Ma trận đầu ra (feature map), kích thước \( O_h \times O_w \).

### Công thức  
Phần tử tại vị trí \((i, j)\) của ma trận đầu ra \( O \) được tính như sau:  

\[
O(i,j) = \sum_{m=0}^{K_h-1} \sum_{n=0}^{K_w-1} I(i+m, j+n) \cdot K(m,n)
\]

Trong đó:  
- \( 0 \leq i \leq O_h - 1 \)  
- \( 0 \leq j \leq O_w - 1 \)  
- \( O_h = H - K_h + 1 \) (không padding)  
- \( O_w = W - K_w + 1 \) (không padding)

---

## Mô hình C và Testbench

### Mô hình C

1. **Biểu diễn dữ liệu**:  
   - Ảnh đầu vào và kernel được biểu diễn dưới dạng **mảng hai chiều (2D array)** trong C.  

2. **Hàm tính tổng tích chập**:  
   - Hàm `single_operation` hoặc `sum_window` tính giá trị đầu ra của một pixel dựa trên một cửa sổ ảnh đầu vào và kernel.  

3. **Hàm nhân chập chính**:  
   - Hàm `do_convolution` duyệt qua từng pixel của ảnh đầu vào và gọi `sum_window` để tính toán giá trị pixel đầu ra.

---

### Testbench

1. **Phương pháp tham chiếu**:  
   - Sử dụng hàm tham chiếu để tính toán kết quả nhân chập 2D một cách thủ công.  

2. **So sánh kết quả**:  
   - Kết quả từ hàm tham chiếu được so sánh với kết quả từ mô hình C.  

3. **Dữ liệu đầu vào**:  
   - Sử dụng các bộ dữ liệu đầu vào khác nhau để kiểm tra tính đúng đắn của mô hình C.

---

## Tối ưu thiết kế

Các kỹ thuật tối ưu hóa được áp dụng:  

1. **Pipelining**:  
   - Cho phép thực hiện các lần lặp tiếp theo trước khi lần lặp hiện tại hoàn thành.  

2. **Array Partitioning**:  
   - Phân chia mảng thành các phần tử riêng lẻ để cho phép truy cập đồng thời.  

3. **Loop Unrolling**:  
   - Mở rộng vòng lặp để tăng tốc độ thực thi.  

4. **Line Buffer**:  
   - Lưu trữ tạm thời các dòng pixel của ảnh đầu vào để giảm số lần truy cập bộ nhớ ngoài.  

5. **Streaming**:  
   - Sử dụng `hls::stream` để truyền dữ liệu giữa các khối chức năng.

---

## Mô phỏng và đánh giá

1. **C/RTL Co-Simulation**:  
   - Sử dụng công cụ của **Vivado HLS** để mô phỏng thiết kế RTL.  

2. **Đánh giá hiệu năng**:  
   - Các chỉ số như **latency** và **interval** được đánh giá qua báo cáo của Vivado HLS.  

---

## Kết quả

- Dự án triển khai thành công trên nền tảng **Zynq-7000**.  
- Đạt được hiệu năng cao, sử dụng ít tài nguyên phần cứng và có độ trễ thấp, II = 1

---

## Kết luận

Dự án minh họa cách tiếp cận thiết kế phần cứng bằng **HLS** và chứng minh tiềm năng của HLS trong tăng tốc các thuật toán xử lý tín hiệu số.  
Thiết kế này có thể được sử dụng như một bộ tăng tốc phần cứng cho các ứng dụng **xử lý ảnh**, **thị giác máy tính**, và **học sâu**.
