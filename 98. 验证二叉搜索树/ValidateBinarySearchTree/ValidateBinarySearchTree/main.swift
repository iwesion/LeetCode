//
//  main.swift
//  ValidateBinarySearchTree
//
//  Created by wesion on 2021/10/14.
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
func isValidBST(_ root: TreeNode?) -> Bool {
    if root == nil {
        return false
    }
    return BST(root, Int.min, Int.max)
    
}
func BST(_ root:TreeNode? ,_ min:Int , _ max:Int) -> Bool {
    if root == nil {
        return true
    }
    
    
    if root!.val <= min || root!.val >= max {
        return false
    }
    //左边树只要判断值是否小于最大值（min就默认去Int.min）
    let rootLeft = BST(root?.left, min, root!.val)
    //左边树只要判断值是否大于最小值（max就默认去Int.max）
    let rootRight = BST(root?.right, root!.val, max)
    
    
    return rootLeft&&rootRight
}




print(isValidBST(.init(.init(2), .init(1), .init(3))))
