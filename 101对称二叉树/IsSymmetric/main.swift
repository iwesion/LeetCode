//
//  main.swift
//  IsSymmetric
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
func isSymmetric(_ root: TreeNode?) -> Bool {
    
    if root == nil {
        return false
    }

    return contrast(root?.left, root?.right)
    
}

func contrast(_ left: TreeNode?,_ right: TreeNode?) -> Bool {
    //左边树的节点和右边树的节点都为空则想同
    if left?.val == nil && right?.val == nil {
        return true
    }
    //左边树的节点和右边树的节点其中有一个为空 则直接返回不相同
    if left?.val == nil || right?.val == nil {
        return false
    }
    
    if left?.val == right?.val {
        return contrast(left?.left, right?.right)&&contrast(left?.right, right?.left)
    }
    return false
}


var root:TreeNode = .init(1, .init(2, .init(5), .init(4)),.init(2,.init(4),.init(3)))

print(isSymmetric(root))
