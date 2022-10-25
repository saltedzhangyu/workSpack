package test;

import java.util.Arrays;

/**
 * @Author : zhangyu
 * @create 2022/10/13 17:56
 */
public class Test1 {
    public static void main(String[] args) {
        int a = Integer.parseInt(args[0]);
        int b = Integer.parseInt(args[1]);
        int c = Integer.parseInt(args[2]);
        int cursor = 0;

        for (int i = 0, j; i <= b; i++) {
            for (j = 2; j < i; j++) {
                if (i % j == 0) {
                    break;
                }
            }
            if (i == j) {
                System.out.print(i + " ");
                if (++cursor == c) {
                    System.out.println();
                }
            }
        }

    }
}
