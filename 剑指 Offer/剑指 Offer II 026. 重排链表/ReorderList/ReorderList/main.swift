//
//  main.swift
//  ReorderList
//
//  Created by wesion on 2021/12/13.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
class Solution {
    func reorderList(_ head: ListNode?) {
        var nhead = head
        var temp : [ListNode] = []
        while nhead != nil{
            temp.append(nhead!)
            nhead = nhead!.next
            
        }
        var left:Int = 0,right:Int = temp.count - 1
        while left<right {
            temp[left].next = temp[right]
            left += 1
            if left == right{
                break
            }
            temp[right].next = temp[left]
            right -= 1
        }
        print(111)
    }
}

let head : ListNode = .init(1, .init(2, .init(3, .init(4, .init(5)))))
Solution.init().reorderList(head)
