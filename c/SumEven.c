#include <stdio.h>

int main() {
    int sum = 0;

    for (int i = 0; i <= 100; i++) {
        if (i % 2 == 0) {
            sum += i;
        }
    }

    printf("Sum of even numbers from 0 to 100 is: %d\n", sum);
    return 0;
}
