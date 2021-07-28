package com.Util;

import java.math.BigDecimal;
import java.util.Arrays;

public class LvjunUtil {
    public static void main(String[] args) {
//        int arr = arr[];
        int[] arr = {8,6,5,7,3,9,2,0,1,4};
        LvjunUtil lu = new LvjunUtil();

//        lu.InsertSort(arr,arr.length);


        double upTime;//方法的执行时间(秒)  currentTimeMillis  毫秒 nanoTime 纳秒
        long startTime=System.nanoTime(); //获取开始时间

        lu.BubbleSort(arr,arr.length);

        System.out.println(Arrays.toString(arr));
        long endTime=System.nanoTime(); //获取结束时间
        upTime = new BigDecimal(endTime-startTime).divide(new BigDecimal(1000)).doubleValue();//耗时(秒)
        System.out.println(upTime);

    }

    //1.插入排序
    // 时间复杂度：最坏情况下为O(N*N)，此时待排序列为逆序，或者说接近逆序
    //      最好情况下为O(N)，此时待排序列为升序，或者说接近升序。
    //空间复杂度：O(1)

    void InsertSort(int[] arr, int n){
        for (int i = 0;i < n-1;++i){
            //记录有序序列最后一个元素得下标
            int end = i;
            int tem = arr[end + 1];
            //单趟排
            while (end >= 0){
                //比插入的数打就向后移
                if(tem < arr[end]){
                    arr[end+1] = arr[end];
                    end--;
                }
                //比插入的数小，跳出循环
                else {
                    break;
                }
            }
            //tem放到比插入的数小的数的 后面
            arr[end + 1] = tem;
        }

    }


    //希尔排序
    //时间复杂度平均：O(N^1.3)
    //空间复杂度：O(1)

    void ShellSort(int[] arr,int n){
        int gap = n;
        while (gap>1){
            //每次对gap折半操作
            gap = gap/2;
            //单趟排序
            for(int i=0;i<n-gap;++i){
                int end = i;
                int tem = arr[end+gap];
                while (end>=0){
                    if (tem<arr[end]){
                        arr[end+gap]=arr[end];
                        end -= gap;
                    }else {
                        break;
                    }
                }
                arr[end+gap] = tem;
            }
        }
    }

    //选择排序
    void swap(int a,int b,int[] arr){
        int tem = arr[a];
        arr[a] = arr[b];
        arr[b] = tem;
    }

    void SelectSort(int[] arr,int n){
        //保存参与单趟排序的第一个数和最后一个数的下标
        int begin = 0,end = n - 1;
        while (begin<end){
            //保存最大值的下标
            int maxi = begin;
            //保存最小值的下标
            int mini = begin;
            //找出最大值和最小值的小标
            for(int i = begin;i<=end;++i){
                if(arr[i]<arr[mini]){
                    mini=i;
                }
                if(arr[i]>arr[maxi]){
                    maxi=i;
                }
            }
            //最小值放在序列开头
            swap(mini,begin,arr);
//            swap(&arr[mini],&arr[begin]);
            //防止最大的数在begin位置被换走
            if (begin == maxi){
                maxi = mini;
            }
            //最大值放在序列结尾
            swap(maxi,end,arr);
            ++begin;
            --end;
        }
    }


    //冒泡排序
    //时间复杂度：最坏情况：O(N^2)
    //      最好情况：O(N)
    //空间复杂度：O(1)
    void BubbleSort(int[] arr,int n){
        int end = n;
        while (end>=0){
            int flag = 0;
            for(int i = 1;i < end; ++i){
                if (arr[i-1] > arr[i]){
                    int tem = arr[i];
                    arr[i] = arr[i-1];
                    arr[i-1] = tem;
                    flag = 1;
                }
            }
            if(flag == 0) {
                break;
            }
            --end;
        }
    }







}
