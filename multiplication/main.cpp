#include <iostream>

using namespace std;

int main() {
    int table[10][10];
    table[0][0] = 0;
    for (int i = 1; i < 10; i++) {
        table[0][i] = i;
        table[i][0] = i;
    }

    for (int i = 0; i < 10; i++) {
        cout << table[0][i] << "\t";
    }
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j <= i; j++) {
            if (i != 0 && j != 0) {
                table[i][j] = table[0][j] * table[i][0];
            }
            cout << table[i][j] << "\t";
        }
        cout << "\n";
    }


}
