#include <iostream>
using namespace std;

int main() {
    int a, b, x, y;
    a = 0;
    b = 1;
    x = a++ && b++;
    cout << "a = " << a << " b = " << b << " x = " << x << endl;
    a = 1;
    b = 1;
    x = a++ && b++;
    cout << "a = " << a << " b = " << b << " x = " << x << endl;
    a = 0;
    b = 1;
    y = a++ || b++;
    cout << "a = " << a << " b = " << b << " y = " << y << endl;
    a = 1;
    b = 1;
    y = a++ || b++;
    cout << "a = " << a << " b = " << b << " y = " << y << endl;
    return 0;
}
