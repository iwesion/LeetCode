//
//  main.swift
//  KthSmallest
//
//  Created by wesion on 2021/10/18.
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
var res:[Int] = []
func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
    traverse(root!)
    
   
    print(res[k-1])
 
    return res[k-1]
}

func traverse(_ root:TreeNode? ) {
    if root == nil {
        return
    }
    traverse(root!.left)
    res.append(root!.val)
    traverse(root!.right)
}

let root:TreeNode = .init(3, .init(1, nil, .init(2)), .init(4))

print(kthSmallest(root, 1))
