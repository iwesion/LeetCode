//
//  main.swift
//  AddTwoNumbers
//
//  Created by wesion on 2021/12/16.
//

import Foundation
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var list1 = l1
    var list2 = l2
    var carry = 0
    while list1 != nil && list2 != nil {
        let data = (list1!.val + list2!.val + carry) % 10
        carry = (list1!.val + list2!.val + carry) / 10
        list1!.val = data
        if carry > 0 {
            if list1!.next == nil {
                list1!.next = ListNode(carry)
                carry = 0
            }else if list2!.next == nil {
                list2!.next = ListNode(carry)
                carry = 0
            }
        }
        list2!.val = list1!.val
        list1 = list1!.next
        list2 = list2!.next
    }
    return list1 == nil ? l2 : l1
}
