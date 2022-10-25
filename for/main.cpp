#include <iostream>

using namespace std;

int main() {
    int num;
    cin >> num;
    for (int i = 1; i <= num / 2; i++) {
        if (num % i == 0) {
            cout << i << " ";
        }
    }
    cout << "\n";

    int i = 1;
    while (i <= num / 2) {
        if (num % i == 0) {
            cout << i << " ";
        }
        i++;
    }
    cout << "\n";

    i = 1;
    do {
        if (num % i == 0) {
            cout << i << " ";
        }
        i++;
    } while (i <= num / 2);
}
