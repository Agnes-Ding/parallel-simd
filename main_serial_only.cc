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

// ==================== 矩阵生成 ====================
std::vector<float> generate_matrix(int n) {
    std::vector<float> A(n * n);
    std::mt19937 gen(42);
    std::uniform_real_distribution<float> dis(-100.0f, 100.0f);
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++)
            A[i * n + j] = dis(gen);
        if (std::abs(A[i * n + i]) < 0.001f)
            A[i * n + i] = 1.0f;
    }
    return A;
}

// ==================== 纯串行高斯消去（给-O3自动向量化用的目标）====================
void gauss_serial(std::vector<float>& A, int n) {
    for (int k = 0; k < n; k++) {
        float pivot = A[k * n + k];
        for (int j = k + 1; j < n; j++)
            A[k * n + j] /= pivot;
        A[k * n + k] = 1.0f;
        
        for (int i = k + 1; i < n; i++) {
            float factor = A[i * n + k];
            for (int j = k + 1; j < n; j++)
                A[i * n + j] -= factor * A[k * n + j];
            A[i * n + k] = 0.0f;
        }
    }
}

// ==================== 主函数 ====================
int main(int argc, char *argv[]) {
    int n = 1000;
    if (argc > 1)
        n = std::stoi(argv[1]);
    
    std::cout << "[Auto-Vec Test] Matrix size: " << n << "x" << n << std::endl;
    
    std::vector<float> A = generate_matrix(n);
    
    auto t1 = std::chrono::high_resolution_clock::now();
    gauss_serial(A, n);
    auto t2 = std::chrono::high_resolution_clock::now();
    auto elapsed = std::chrono::duration<double, std::milli>(t2 - t1).count();
    
    std::cout << "Time: " << elapsed << " ms" << std::endl;
    
    return 0;
}