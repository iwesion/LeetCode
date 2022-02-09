//
//  main.swift
//  HasCycle
//
//  Created by wesion on 2021/11/24.
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
 func hasCycle(_ head: ListNode?) -> Bool {
         var hashTable: [ListNode] = []
         var head: ListNode? = head

         while head != nil {
             
            if hashTable.contains(where: { a in
                a === head!
            }) {
                 return true
             } else {
                 hashTable.append(head!)
                 head = head?.next
             }
         }
         return false
     }
print(hasCycle(.init(1)))
