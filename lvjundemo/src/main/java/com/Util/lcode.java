package com.Util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class lcode {
    // 2.两数相加
    public static void main(String[] args) throws IOException {
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        String line;
        while ((line = in.readLine()) != null) {
            ListNode l1 = stringToListNode(line);
            line = in.readLine();
            ListNode l2 = stringToListNode(line);

            ListNode ret = new lcode().addTwoNumbers(l1, l2);

            String out = listNodeToString(ret);

            System.out.print(out);
        }
    }
    public static ListNode stringToListNode(String input) {
        // Generate array from the input
        int[] nodeValues = stringToIntegerArray(input);

        // Now convert that list into linked list
        ListNode dummyRoot = new ListNode(0);
        ListNode ptr = dummyRoot;
        for(int item : nodeValues) {
            ptr.next = new ListNode(item);
            ptr = ptr.next;
        }
        return dummyRoot.next;
    }

    public static int[] stringToIntegerArray(String input) {
        input = input.trim(); // 删除字符串的头尾空白符
        input = input.substring(1, input.length() - 1);//截取字符串
        if (input.length() == 0) {
            return new int[0];
        }

        String[] parts = input.split(",");//分割成字符串数组
        int[] output = new int[parts.length];
        for(int i = 0; i < parts.length; i++) {
            String part = parts[i].trim();
            output[i] = Integer.parseInt(part);
        }
        return output;
    }
    public static String listNodeToString(ListNode node) {
        if (node == null) {
            return "[]";
        }

        String result = "";
        while (node != null) {
            result += Integer.toString(node.val) + ", ";
            node = node.next;
        }
        return "[" + result.substring(0, result.length() - 2) + "]";
    }

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

}
