//
//  main.swift
//  BalancedBinaryTree
//
//  Created by wesion on 2021/8/6.
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

func isBalanced(_ root: TreeNode?) -> Bool {
    if root == nil {
        return true
    }
    return  (abs(treeHeight(root?.left) - treeHeight(root?.right)) <= 1 ) && isBalanced(root?.left) && isBalanced(root?.right)
   
}

func treeHeight(_ root : TreeNode?) -> Int {
   
    if root?.val == nil {
        return 0
    }
    
       
    let leftnum =  treeHeight(root?.left)

    let rightnum =  treeHeight(root?.right)
    
   return max(leftnum, rightnum) + 1
   
    
}


//let root:TreeNode = .init(1, .init(2, .init(3, .init(4), .init(4)), .init(3)), .init(2))
//let root:TreeNode = .init(1, nil, .init(2, nil, .init(3)))
//let root:TreeNode = .init(1, .init(2, .init(3), nil), .init(2, .init(3, .init(4, nil, .init(4)), nil), nil))
let root:TreeNode = .init(3, .init(9), .init(20, .init(15), .init(7)))
isBalanced(root)
