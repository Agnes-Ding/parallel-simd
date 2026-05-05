#include <vector>
#include <cstring>
#include <string>
#include <iostream>
#include <fstream>
#include <chrono>
#include <iomanip>
#include <sstream>
#include <sys/time.h>
#include <omp.h>
#include <arm_neon.h>
#include <random>
#include <cmath>
#include <algorithm>
#include <cassert>

// ==================== 高斯消去函数声明 ====================
void gauss_serial(std::vector<float>& A, int n);
void gauss_simd(std::vector<float>& A, int n);
void gauss_simd_aligned(std::vector<float>& A, int n);

// ==================== 辅助函数 ====================
std::vector<float> generate_matrix(int n) {
    std::vector<float> A(n * n);
    std::random_device rd;
    std::mt19937 gen(42);  // 固定种子，保证可复现
    std::uniform_real_distribution<float> dis(-100.0f, 100.0f);
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            A[i * n + j] = dis(gen);
        }
        // 确保对角线元素不为0
        if (std::abs(A[i * n + i]) < 0.001f) {
            A[i * n + i] = 1.0f;
        }
    }
    return A;
}

std::vector<float> copy_matrix(const std::vector<float>& A) {
    return std::vector<float>(A);
}

bool verify_result(const std::vector<float>& A1, 
                   const std::vector<float>& A2, 
                   int n, 
                   float epsilon = 1e-5f) {
    for (int i = 0; i < n * n; i++) {
        float diff = std::abs(A1[i] - A2[i]);
        if (diff > epsilon) {
            return false;
        }
    }
    return true;
}

// ==================== 串行版本 ====================
void gauss_serial(std::vector<float>& A, int n) {
    for (int k = 0; k < n; k++) {
        float pivot = A[k * n + k];
        for (int j = k + 1; j < n; j++) {
            A[k * n + j] /= pivot;
        }
        A[k * n + k] = 1.0f;
        
        for (int i = k + 1; i < n; i++) {
            float factor = A[i * n + k];
            for (int j = k + 1; j < n; j++) {
                A[i * n + j] -= factor * A[k * n + j];
            }
            A[i * n + k] = 0.0f;
        }
    }
}

// ==================== SIMD版本（NEON） ====================
void gauss_simd(std::vector<float>& A, int n) {
    for (int k = 0; k < n; k++) {
        float pivot = A[k * n + k];
        float32x4_t vpivot = vdupq_n_f32(pivot);
        
        int j = k + 1;
        for (; j + 3 < n; j += 4) {
            float32x4_t va = vld1q_f32(&A[k * n + j]);
            va = vdivq_f32(va, vpivot);
            vst1q_f32(&A[k * n + j], va);
        }
        for (; j < n; j++) {
            A[k * n + j] /= pivot;
        }
        A[k * n + k] = 1.0f;
        
        for (int i = k + 1; i < n; i++) {
            float factor = A[i * n + k];
            float32x4_t vfactor = vdupq_n_f32(factor);
            
            int j = k + 1;
            for (; j + 3 < n; j += 4) {
                float32x4_t vak = vld1q_f32(&A[k * n + j]);
                float32x4_t vai = vld1q_f32(&A[i * n + j]);
                float32x4_t vtemp = vmulq_f32(vfactor, vak);
                vai = vsubq_f32(vai, vtemp);
                vst1q_f32(&A[i * n + j], vai);
            }
            for (; j < n; j++) {
                A[i * n + j] -= factor * A[k * n + j];
            }
            A[i * n + k] = 0.0f;
        }
    }
}

// ==================== SIMD版本（对齐优化） ====================
void gauss_simd_aligned(std::vector<float>& A, int n) {
    for (int k = 0; k < n; k++) {
        float pivot = A[k * n + k];
        float32x4_t vpivot = vdupq_n_f32(pivot);
        
        int j = k + 1;
        while (j < n && ((uintptr_t)(&A[k * n + j]) & 0xF) != 0) {
            A[k * n + j] /= pivot;
            j++;
        }
        for (; j + 3 < n; j += 4) {
            float32x4_t va = vld1q_f32(&A[k * n + j]);
            va = vdivq_f32(va, vpivot);
            vst1q_f32(&A[k * n + j], va);
        }
        for (; j < n; j++) {
            A[k * n + j] /= pivot;
        }
        A[k * n + k] = 1.0f;
        
        for (int i = k + 1; i < n; i++) {
            float factor = A[i * n + k];
            float32x4_t vfactor = vdupq_n_f32(factor);
            
            int j = k + 1;
            while (j < n && ((uintptr_t)(&A[i * n + j]) & 0xF) != 0) {
                A[i * n + j] -= factor * A[k * n + j];
                j++;
            }
            for (; j + 3 < n; j += 4) {
                float32x4_t vak = vld1q_f32(&A[k * n + j]);
                float32x4_t vai = vld1q_f32(&A[i * n + j]);
                float32x4_t vtemp = vmulq_f32(vfactor, vak);
                vai = vsubq_f32(vai, vtemp);
                vst1q_f32(&A[i * n + j], vai);
            }
            for (; j < n; j++) {
                A[i * n + j] -= factor * A[k * n + j];
            }
            A[i * n + k] = 0.0f;
        }
    }
}

// ==================== 主函数 ====================
int main(int argc, char *argv[]) {
    auto Start = std::chrono::high_resolution_clock::now();
    
    // TODO：完成你的高斯消元
    int n = 100;  // 默认矩阵大小
    if (argc > 1) {
        n = std::stoi(argv[1]);
    }
    
    std::cout << "Testing matrix size: " << n << "x" << n << std::endl;
    
    // 生成测试数据
    std::vector<float> A_original = generate_matrix(n);
    
    // 测试串行版本
    std::vector<float> A_serial = copy_matrix(A_original);
    auto t1 = std::chrono::high_resolution_clock::now();
    gauss_serial(A_serial, n);
    auto t2 = std::chrono::high_resolution_clock::now();
    auto serial_time = std::chrono::duration<double, std::milli>(t2 - t1).count();
    
    // 测试SIMD版本
    std::vector<float> A_simd = copy_matrix(A_original);
    t1 = std::chrono::high_resolution_clock::now();
    gauss_simd(A_simd, n);
    t2 = std::chrono::high_resolution_clock::now();
    auto simd_time = std::chrono::duration<double, std::milli>(t2 - t1).count();
    
    // 测试SIMD对齐版本
    std::vector<float> A_simd_aligned = copy_matrix(A_original);
    t1 = std::chrono::high_resolution_clock::now();
    gauss_simd_aligned(A_simd_aligned, n);
    t2 = std::chrono::high_resolution_clock::now();
    auto aligned_time = std::chrono::duration<double, std::milli>(t2 - t1).count();
    
    // 验证结果
    bool simd_ok = verify_result(A_serial, A_simd, n);
    bool aligned_ok = verify_result(A_serial, A_simd_aligned, n);
    
    std::cout << std::fixed << std::setprecision(3);
    std::cout << "Serial:  " << serial_time << " ms\n";
    std::cout << "SIMD:    " << simd_time << " ms (speedup: " 
              << serial_time / simd_time << "x, correct: " << (simd_ok ? "YES" : "NO") << ")\n";
    std::cout << "Aligned: " << aligned_time << " ms (speedup: " 
              << serial_time / aligned_time << "x, correct: " << (aligned_ok ? "YES" : "NO") << ")\n";
    
    auto End = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double, std::ratio<1, 1000>> elapsed = End - Start;
    std::cout << "Total time: " << elapsed.count() << " ms" << std::endl;
    
    return 0;
}
