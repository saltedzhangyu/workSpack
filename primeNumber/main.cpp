#include <iostream>

using namespace std;

int main() {
    int count = 0;
    for (int i = 1, j; i <= 1000; i++) {
        for (j = 2; j <= i / 2; j++) {
            if (i % j == 0) {
                break;
            }
        }
        if (j == i / 2 + 1) {
            cout << i << " ";
            count++;
        }
    }

    cout << "\n1000以内" << count << "个素数";
}
