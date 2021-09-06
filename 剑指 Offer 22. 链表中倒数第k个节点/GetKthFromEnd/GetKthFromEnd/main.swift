//
//  main.swift
//  GetKthFromEnd
//
//  Created by wesion on 2021/9/2.
//
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
    
    let res:ListNode = .init(-1)
    res.next = head
    var po = res.next
    //链表长度
    var i:Int = 1
    while po?.next != nil {
        
        i += 1
        po = po?.next
    }
    var qHead = res.next
    for _ in 0..<i-k {
        qHead = qHead?.next
    }
    return qHead
}

let head:ListNode = .init(1)
head.next = .init(2)
head.next?.next = .init(3)
head.next?.next?.next = .init(4)
head.next?.next?.next?.next = .init(5)
getKthFromEnd(head, 2)
