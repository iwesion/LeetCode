//
//  main.swift
//  postorderTraversal
//
//  Created by wesion on 2022/2/11.
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

var res: [Int] = []
func postorderTraversal(_ root: TreeNode?) -> [Int] {
    dfs(root)
    return res
    
}
func dfs(_ root: TreeNode?){
    if root == nil{
        return
    }
    dfs(root!.left)
    dfs(root!.right)
    res.append(root!.val)
    
}

