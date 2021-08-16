//
//  main.swift
//  PathSum
//
//  Created by wesion on 2021/8/10.
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
func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    
    return pathSum(root, 0, targetSum)
}

func pathSum(_ root: TreeNode?,_ sum:Int,_ targetSum: Int) -> Bool {
    var sum = sum
    
    
    if root?.val == nil {
        return false
    }
    sum = sum + root!.val
    
    if root?.left == nil && root?.right == nil {
        return sum == targetSum
    }
    
    return pathSum(root?.left, sum, targetSum) || pathSum(root?.right, sum, targetSum)
    
   
}

let root:TreeNode = .init(1, .init(2), .init(3, nil, .init(4)))

let a =  hasPathSum(root, 3)
print(a)

