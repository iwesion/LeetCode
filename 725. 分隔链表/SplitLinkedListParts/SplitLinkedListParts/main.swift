//
//  main.swift
//  SplitLinkedListParts
//
//  Created by wesion on 2021/9/22.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func splitListToParts(_ head: ListNode?, _ k: Int) -> [ListNode?] {
    
    var res:[ListNode?] = Array.init(repeating: ListNode.init(), count: k)
    var curr = head
    var cnt = 1
    //先遍历拿到链表长度
    while curr?.next != nil {
        cnt += 1
        curr = curr?.next
    }
    //计算吧长度分成K份，每个的长度
    let kk = Int(cnt/k)  , remainder = cnt % k
    
    var temp = head
    
    for i in 0..<k {
        res[i] = temp
        //这里很巧妙，当remainder>i时，加1，保证了每部分的长度应该尽可能的相等：任意两部分的长度差距不能超过 1 ，且优先前面的先加1
        let size = kk + (i<remainder ? 1:0)
        if size > 0 {
            for _ in 0..<size-1  {
                temp = temp?.next
            }
            let next:ListNode? = temp?.next
            temp?.next = nil
            temp = next
        }
       
        
        
        
    }
    return res
    
}

let head:ListNode = .init(0, .init(1, .init(2)))
//    ,.init(4,.init(5, .init(6, .init(7, .init(8, .init(9, .init(10)))))))
print(splitListToParts(head, 5))
