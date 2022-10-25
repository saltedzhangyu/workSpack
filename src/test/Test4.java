package test;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Scanner;

/**
 * @Author : zhangyu
 * @create 2022/10/14 14:40
 */
public class Test4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int year = sc.nextInt();
        int month = sc.nextInt();
        int day = sc.nextInt();
        if (--month >= 11) {
            month = 11;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR, year);
        calendar.set(Calendar.MONTH, month);
        calendar.set(Calendar.DATE, day);
        SimpleDateFormat sdf = new SimpleDateFormat("EEEE");
        System.out.println(sdf.format(calendar.getTime()));


    }
}
