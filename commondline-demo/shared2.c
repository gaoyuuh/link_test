
#include <stdio.h>

void shared2_method() {
    printf("shared2_method \n");
}

void __attribute__((weak)) hello() {
    printf("Hello, shared-2\n");
}
