//
//  main.swift
//  SwapNodesPairs
//
//  Created by wesion on 2021/10/29.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func swapPairs(_ head: ListNode?) -> ListNode? {
   
    var nHead = head
    while nHead?.next != nil {
        //先保存next的val-->nextVal
        let nextVal = nHead?.next?.val
        //保存next，并吧val修改成当前head的值，后续只要吧head的next变成这个值就可以
        let nxt = nHead?.next
        nxt?.val = nHead!.val
        
        //改变head的val改变成nextVal，然后next直接变成nxt
        nHead?.val = nextVal!
        nHead?.next = nxt
        
        //因为是22变换 ，所以这里直接用nxt!.next
        nHead = nxt!.next
    }
    
    
    return head
}


let head:ListNode = .init(1, .init(2, .init(3)))

swapPairs(head)
