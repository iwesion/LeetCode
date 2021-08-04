//
//  main.swift
//  SameTree
//
//  Created by wesion on 2021/8/2.
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
func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil
    {
            return true
    }
    if p == nil  || q == nil {
        return false
    }
    
    if p?.val != q?.val {
        return false
    }
    
    return isSameTree(p?.left, q?.left)&&isSameTree(p?.right, q?.right)


 }
 
var p = TreeNode.init(1, .init(4),.init(3))
 var q = TreeNode.init(1, .init(2), .init(3))
 
print(isSameTree(p, q))
 
