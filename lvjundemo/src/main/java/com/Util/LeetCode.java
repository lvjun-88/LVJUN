package com.Util;

public class LeetCode {
    public static void main(String[] args) {
        //1.两数之和
        int[] nums = {2,7,11,15};
        int target = 9;
        LeetCode lc = new LeetCode();
        int[] arr = lc.twoSum(nums,target);
        for(int i = 0;i<arr.length;i++){
            System.out.println(arr[i]);
        }
        //2.两数相加
        int[] nodeValues1 = {2,4,3};
        ListNode l1 = new ListNode(0);
        ListNode ptr1 = l1;
        for(int item : nodeValues1) {
            ptr1.next = new ListNode(item);
            ptr1 = ptr1.next;
        }
        int[] nodeValues2 = {5,6,4};
        ListNode l2 = new ListNode(0);
        ListNode ptr2 = l2;
        for(int item : nodeValues2) {
            ptr2.next = new ListNode(item);
            ptr2 = ptr2.next;
        }
        ListNode ln = lc.addTwoNumbers(l1.next,l2.next);
    }




    //2.两数相加
    public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        ListNode pre = new ListNode(0);
        ListNode cur = pre;
        int carry = 0;
        while(l1 != null || l2 != null) {
            int x = l1 == null ? 0 : l1.val;
            int y = l2 == null ? 0 : l2.val;
            int sum = x + y + carry;

            carry = sum / 10;
            sum = sum % 10;
            cur.next = new ListNode(sum);

            cur = cur.next;
            if(l1 != null) {
                l1 = l1.next;
            }
            if(l2 != null) {
                l2 = l2.next;
            }
        }
        if(carry == 1) {
            cur.next = new ListNode(carry);
        }
        return pre.next;
    }


     /* Definition for singly-linked list.*/

//    public class ListNode {
//        int val;
//        ListNode next;
//        ListNode() {}
//        ListNode(int val) { this.val = val; }
//        ListNode(int val, ListNode next) { this.val = val; this.next = next; }
//     }



    //1.两数之和求下标
    public int[] twoSum(int[] nums, int target) {
        int n = nums.length;
        for (int i = 0; i < n; ++i) {
            for (int j = i + 1; j < n; ++j) {
                if (nums[i] + nums[j] == target) {
                    return new int[]{i, j};
                }
            }
        }
        return new int[0];
//        throw new IllegalArgumentException("No two sum solution");
    }


}
