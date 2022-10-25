#include "circle.h"
int main() {
    double s, radius;
    cout << "请输入圆的半径" << endl;
    cin >> radius;
    s = area(radius);
    cout << "圆的面积为" << s;
    return 0;
}
