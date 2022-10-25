#include <iostream>

using namespace std;

int main() {
    int i = 1;
    int s = 0;
    for (; i < 10; i++) {
        s += i * i;
        if (s > 10)
            break;
    }

    cout << "i = " << i << " s = " << s;
    return 0;
}
