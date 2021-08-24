//
//  main.swift
//  SwapNodesInPairs
//
//  Created by wesion on 2021/8/24.
//

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
func swapPairs(_ head: ListNode?) -> ListNode? {
//    //递归
//    if head == nil || head?.next == nil {
//        return head
//    }
//    let next: ListNode? = head?.next
//    head?.next = swapPairs(next?.next)
//    next?.next = head
//    return next
    
    var prev = ListNode(-1)
    prev.next = head
    var curr: ListNode? = prev
    
    while curr?.next != nil && curr?.next?.next != nil {
        let left = curr?.next
        let right = curr?.next?.next
        
        
        curr?.next = right
        left?.next = right?.next
        right?.next = left
        curr = left

    }
    return prev.next
}

let head : ListNode = .init(1, .init(2, .init(3, .init(4))))

let res = swapPairs(head)

print(res)
