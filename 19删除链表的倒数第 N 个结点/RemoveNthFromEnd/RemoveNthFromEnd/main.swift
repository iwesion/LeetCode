//
//  main.swift
//  RemoveNthFromEnd
//
//  Created by wesion on 2021/8/4.
//

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
  
    var newHead = ListNode.init(0, head)
    
    var fastHead:ListNode = newHead
    var  slowHead:ListNode = newHead
    
    for _ in 0..<n {
        fastHead = fastHead.next!
    }
    
    while fastHead.next != nil {
        fastHead = fastHead.next!
         slowHead =  slowHead.next!
       
    }
    slowHead.next = slowHead.next?.next

    
    return newHead.next
}

var head:ListNode = ListNode.init(1, .init(2, .init(3, .init(4, .init(5)))))

print(removeNthFromEnd(head, 2))


