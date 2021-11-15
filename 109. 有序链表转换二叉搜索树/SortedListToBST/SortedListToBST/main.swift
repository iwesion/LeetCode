//
//  main.swift
//  SortedListToBST
//
//  Created by wesion on 2021/11/15.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
func sortedListToBST(_ head: ListNode?) -> TreeNode? {
    if head == nil {
        return nil
    }
    var nhead = head
    var arr:[Int] = []
    
    
    while nhead != nil {
        arr.append(nhead!.val)
        nhead = nhead!.next
    }
    
    
    return BST(arr)
}

func BST(_ arr:[Int]) -> TreeNode?{
    var  res:TreeNode = .init()
    if arr.count == 0  {
        return res
    }
    if arr.count == 1 {
        res.val = arr.first!
        return res
    }
    if arr.count  == 2 {
        res = .init(arr[1], .init(arr[0]), nil)
        return res
    }
    if arr.count == 3 {
        res = .init(arr[1], .init(arr[0]),.init(arr[2]))
        return res
    }
    
    let mid = arr.count >> 1
    let left = arr[0..<mid]
    let right = arr[mid+1..<arr.count]
    
    
    res.val = arr[mid]
    res.left = BST(Array(left))
    res.right = BST(Array(right))
    
    return res
}

let head:ListNode? = nil
//    .init(-10, .init(-3, .init(0, .init(5, .init(9)))))
let res = sortedListToBST(head)

print(res)

