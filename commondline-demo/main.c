#include <stdio.h>

// 声明库中的函数
void hello();
void static1_method();
void static2_method();
void shared1_method();
void shared2_method();

int main() {
    static1_method();
    // shared1_method();
    hello();
    return 0;
}
