//
//  main.swift
//  RecoverBinarySearchTree
//
//  Created by wesion on 2021/10/22.
//

import Foundation

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
var prev: TreeNode?
var first: TreeNode?
var second: TreeNode?
func recoverTree(_ root: TreeNode?) {
    guard let root = root else { return }
    findWrongNodes(root)
    if let f = first, let s = second {
        let temp = f.val
        f.val = s.val
        s.val = temp
    }
}

private func findWrongNodes(_ root: TreeNode?) {
    guard let root = root else { return }
    findWrongNodes(root.left)
    if let prevNode = prev, prevNode.val > root.val {
        second = root
        if first != nil { return }
        first = prev
    }
    prev = root
    findWrongNodes(root.right)
}



let root:TreeNode = .init(1, .init(3, nil, .init(2)), nil)

print(recoverTree(root))
