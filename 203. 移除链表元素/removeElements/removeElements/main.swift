//
//  main.swift
//  removeElements
//
//  Created by wesion on 2022/2/15.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    
    guard head != nil else { return head }
    var p = head
    while p!.next != nil {
        if p!.next!.val == val{
            p!.next = p!.next!.next
        }else {
            p = p!.next
        }
    }
    return head!.val == val ? head!.next : head
    
}

let head:ListNode = .init(1, .init(2, .init(6, .init(3, .init(4, .init(5, .init(6)))))))
let val = 6

let res = removeElements(head, val)
print(res)
