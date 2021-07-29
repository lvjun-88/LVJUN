package com.Util;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Random;
import java.util.Scanner;

public class demo {
    public static void main(String[] args) {

        System.out.println("欢迎来到猜数小游戏，3秒之后开始游戏！！！");
        for(int i=3;i>0;i--){
            try{
                Thread.sleep(1000);
            }catch (InterruptedException e){
                e.printStackTrace();
            }
            System.out.println(i);
        }

        Random random = new Random();
        System.out.println("正在生成随机数。。。请稍等");
        int i = random.nextInt(800000) + 100000;
        try{
            Thread.sleep(1000);
        }catch (InterruptedException e){
            e.printStackTrace();
        }
        System.out.println("成功生成随机数");
        Scanner in = new Scanner(System.in);
        int line;
        int count = 0;
        System.out.println("请输入你猜的数:");
        while (true) {
            line = in.nextInt();
            if(line == 0){
                System.out.println("正在退出。。。请稍等");
                try{
                    Thread.sleep(2000);
                }catch (InterruptedException e){
                    e.printStackTrace();
                }
                System.out.println("成功退出");

                break;
            }else{
                if(line == i){
                    System.out.println("恭喜你猜对了，随机数为:"+i);
                    System.out.println("你一共猜了:"+count+"次！");
                }
                else if (line<i){
                    System.out.println("你输入的:"+line+"比随机数要小");
                }
                else if (line>i){
                    System.out.println("你输入的:"+line+"比随机数要大");
                }
                count++;
            }
            System.out.println("请再输入:（输入 0 可退出）");
        }

    }
}
