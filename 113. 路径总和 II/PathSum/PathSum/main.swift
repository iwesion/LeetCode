//
//  main.swift
//  PathSum
//
//  Created by wesion on 2021/11/16.
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
var res:[[Int]] = []
var x:[Int] = []
func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
    
    dfs(root,targetSum)
    
    return res
}
func dfs(_ root : TreeNode?,_ targetSum: Int){
    
    
    if root == nil {
       
        return
    }
    x.append(root!.val)
    if root?.left == nil && root?.right == nil {
        print(x)
        if targetSum - root!.val == 0 {
            res.append(x)
        }
    }
    x.removeLast()
    
    if root!.left != nil {
        x.append(root!.val)
        dfs(root!.left,targetSum - root!.val)
        x.removeLast()
    }
    
    if root?.right != nil {
        x.append(root!.val)
        dfs(root!.right,targetSum - root!.val)
        x.removeLast()
    }
   
}

let root:TreeNode = .init(5, .init(4, .init(11, .init(7), .init(2)), nil), .init(8, .init(13), .init(4, .init(5), .init(1))))

  pathSum(root, 22)

