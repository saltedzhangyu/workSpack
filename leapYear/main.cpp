#include <iostream>
using namespace std;

int main() {
    int year;
    bool leap;
    cin >> year;
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0))
        leap = 1;
    else
        leap = 0;
    cout << year << (leap?"是":"不是") << "闰年";
}
