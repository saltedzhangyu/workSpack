#include <iostream>

using namespace std;

int swap(int &, int &);

int main() {
    int a = 1;
    int b = 2;
    swap(a, b);
    cout << a << b;
    return 0;
}

int swap(int &num1, int &num2) {
    int count = num1;
    num1 = num2;
    num2 = count;
}