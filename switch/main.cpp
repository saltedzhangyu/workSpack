#include <iostream>

using namespace std;

int main() {
    float num1;
    float num2;
    char op;
    printf("input expression: num1 + (-, *, /) num2 \n");
    scanf("%f%c%f", &num1, &op, &num2);
    switch (op) {
        case '+':
            printf("%f\n", num1 + num2);
            break;
        case '-':
            printf("%f\n", num1 - num2);
            break;
        case '*':
            printf("%f\n", num1 * num2);
            break;
        case '/':
            printf("%f\n", num1 / num2);
            break;
        default:
            printf("input error");
    }
    return 0;
}


