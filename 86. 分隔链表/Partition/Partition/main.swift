//
//  main.swift
//  Partition
//
//  Created by wesion on 2021/12/1.
//

import Foundation
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    var currentHead = head
    //真正拿来存值的比x小的链表
    let lessHead:ListNode? = .init()
    //拿来遍历的
    var lessh = lessHead
    //真正拿来存值的比x大的链表
    let greaterHead:ListNode? = .init()
    //拿来遍历的
    var greeterh = greaterHead
    
    while currentHead != nil{
        //新建个节点
        let cu:ListNode = .init(currentHead!.val)
        if cu.val >= x{
            greeterh!.next = cu
            greeterh = greeterh!.next
        }else{
            lessh!.next = cu
            lessh = lessh!.next
        }
        print(currentHead!.val)
        currentHead = currentHead!.next
    }
    lessh?.next = greaterHead?.next
    
    return lessHead?.next
}


let head:ListNode = .init(1, .init(4, .init(3, .init(2, .init(5, .init(2))))))
partition(head, 3)
