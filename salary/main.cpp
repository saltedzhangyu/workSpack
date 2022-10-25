#include <iostream>

using namespace std;


int main() {
    cout << "Please input employee's work time and wage_per_hour:";
    int hour;
    float salary;
    float wage;
    cin >> hour >> salary;
    wage = hour * salary;
    if (hour >= 40) {
        hour -= 40;
        if (hour <= 20){
            wage += hour * salary * 0.5;
        } else {
            hour -= 20;
            wage += 20 * salary * 0.5 + hour * salary * 2;
        }
    }
    cout << "The employee's wage: " << wage;
}
