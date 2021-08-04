//
//  main.swift
//  MergeTwoLists
//
//  Created by wesion on 2021/7/29.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1 = l1, l2 = l2, result: ListNode? = ListNode(-1), temp = result
    while l1 != nil, l2 != nil {
        if l1!.val <= l2!.val {
            temp?.next = l1
            
            l1 = l1?.next
        } else {
            temp?.next = l2
            
            l2 = l2?.next
        }
        //temp指针指向后面一位
        temp = temp?.next
    }
    
    // 合并后 l1 和 l2 最多只有一个还未被合并完，我们直接将链表末尾指向未合并完的链表即可
//    if l1 != nil {
//        temp?.next = l1
//    }
//    if l2 != nil {
//        temp?.next = l2
//    }
    temp?.next = l1 == nil ? l2 : l1
    return result?.next
    
    
}
let a = ListNode(1, .init(2, .init(4, .init(8, .init( 8, .init( 9))))))
let b = ListNode(1, .init(3, .init(4, .init(5, .init( 6, .init( 7))))))

print(mergeTwoLists(a, b))
