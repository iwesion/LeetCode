//
//  main.swift
//  MaxDepth
//
//  Created by wesion on 2021/8/5.
//

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

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0
    }
    let left = maxDepth(root?.left)
    let right = maxDepth(root?.right)
    //+1很关键，操作过一轮就相当往下剥了一层
    return max(left, right) + 1
    
}
var root:TreeNode = .init(1, .init(2, .init(5), .init(4)),.init(2,.init(4),.init(3)))

print( maxDepth(root))
