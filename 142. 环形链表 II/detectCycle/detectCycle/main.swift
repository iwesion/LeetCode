//
//  main.swift
//  detectCycle
//
//  Created by wesion on 2022/3/22.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func detectCycle(_ head: ListNode?) -> ListNode? {
    var setArr:[ListNode] = []
    var nhead:ListNode? = head
    while nhead != nil{
        if setArr.contains(where: { a in
            a === nhead
        }){
            
        }
        setArr.append(nhead!)
        nhead = nhead!.next
    }
    return nil
    
}
