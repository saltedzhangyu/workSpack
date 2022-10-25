#include <iostream>
using namespace std;

int main() {
    int x, y, z;
    x = 3;
    y = x++;
    z = x;
    cout << "x = " << x << " y = " << y << " z = " << z << endl;
    x = 3;
    y = ++x;
    z = x;
    cout << "x = " << x << " y = " << y << " z = " << z;
    return 0;
}
