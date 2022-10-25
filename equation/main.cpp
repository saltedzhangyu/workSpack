#include <iostream>
#include <cmath>
using namespace std;

int main() {
    double a, b, c;
    cin >> a >> b >> c;
    double count = b * b - 4 * a * c;
    if (count < 0)
        return 0;
    double x1 = (-b + sqrt(count)) / 2 * a;
    double x2 = (-b - sqrt(count)) / 2 * a;
    cout << x1 << "\n" << x2;
    return 0;
}
