#include <iostream>
#include <ctime>
#include <iomanip>

using namespace std;

int main() {
    int year;
    int month;
    int date;
    struct tm tm_time;
    strptime("2010-11-15 10:39:30","%Y-%m-%d %H:%M:%S",&tm_time);
    auto t = time(0);
    tm* ltm = localtime(&t);
    cout << put_time(ltm,"%j");
}
