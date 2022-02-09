//
//  main.swift
//  ReverseList
//
//  Created by wesion on 2021/11/25.
//

import Foundation
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
func reverseList(_ head: ListNode?) -> ListNode? {
        // if head == nil{
        //     return nil
        // }
        // var prev:ListNode? = nil
        // var curr = head
        // while (curr != nil) {
        //     var nextTemp = curr!.next;
        //     curr!.next = prev;
        //     prev = curr;
        //     curr = nextTemp;
        // }
        // return prev;

        var s:[Int:Int] = [:]
        var newHead = head
        var a = 0
        while newHead != nil{
            s[a] = newHead!.val
            newHead = newHead!.next
            a += 1
        }
        var res :ListNode?
        for i in 0..<a{
            res = .init(s[i]!,res)
        }

        return res
    }

let head:ListNode = .init(1, .init(2, .init(3, .init(4, .init(5)))))
reverseList(head)
