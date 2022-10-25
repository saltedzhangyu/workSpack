package test;

import java.util.Arrays;

/**
 * @Author : zhangyu
 * @create 2022/10/13 17:05
 */
public class Test2 {
    public static void main(String[] args) {
        int [][] cube = new int[5][5];
        int j = 0;
        int k = 2;
        cube[j][k] = 1;
        for (int i = 2; i <= 25; i++) {
            if (j == 0){
                j = 5;
            }
            if (k == 4) {
                k = -1;
            }
            if (cube[--j][++k] != 0) {
                if (++j == 5){
                    j = 0;
                }
            }
            cube[j][k] = i;
        }

        for (int[] ints : cube) {
            for (int anInt : ints) {
                System.out.print(anInt + "\t");
            }
            System.out.println();
        }
    }

}
