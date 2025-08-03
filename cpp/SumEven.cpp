#include <iostream>

int main() {
    int sum = 0;

    for (int i = 0; i <= 100; ++i) {
        if (i % 2 == 0) {
            sum += i;
        }
    }

    std::cout << "Sum of even numbers from 0 to 100 is: " << sum << std::endl;

    return 0;
}
