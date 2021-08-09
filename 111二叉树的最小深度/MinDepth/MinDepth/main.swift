//
//  main.swift
//  MinDepth
//
//  Created by wesion on 2021/8/9.
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
func minDepth(_ root: TreeNode?) -> Int {
    if root?.val == nil {
        return 0
    }
    
    if root?.right == nil && root?.left == nil {
        return 1
    }
    let left = minDepth(root?.left)
    let right = minDepth(root?.right)

    if root?.left == nil || root?.right == nil {
        /*这里其中一个节点为空，说明left和right有一个必然为0，
         触发if root?.val == nil {
         return 0
         }
         所以可以返回x+0+1
         */
        return left + right + 1
    }
    
    
    return min(left, right)+1
}


//let root:TreeNode = .init(1, .init(2, .init(3, .init(4), .init(4)), .init(3)), .init(2))
//let root:TreeNode = .init(1, nil, .init(2, nil, .init(3)))
//let root:TreeNode = .init(1, .init(2, .init(3), nil), .init(2, .init(3, .init(4, nil, .init(4)), nil), nil))
//let root:TreeNode = .init(3, .init(9), .init(20, .init(15), .init(7)))
let root:TreeNode = .init(2, nil, .init(3, nil, .init(4,nil,.init(5, nil, .init(6)))))
print(minDepth(root))
