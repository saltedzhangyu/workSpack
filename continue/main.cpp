#include <iostream>

using namespace std;

int main() {
    int i;
    int s = 0;
    int n = 0;
    for (int i = 0; i < 10; i++) {
        if (i % 2 == 0 || i % 3 == 0) {
            continue;
        }
        n++;
        s += i;
    }
    cout << "n = " <<n << " s = " << s;
}
