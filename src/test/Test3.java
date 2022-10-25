package test;

import java.util.Scanner;

/**
 * @Author : zhangyu
 * @create 2022/10/13 18:57
 */
public class Test3 {
    public static void main(String[] args) {
        int[] array = {15, 12, 9, 6, 3};
        int[] reverseArray = new int[array.length];
        for (int i = 0; i < array.length; i++) {
            reverseArray[i] = array[array.length - i - 1];
            System.out.print(reverseArray[i] + " ");
        }
    }
}
