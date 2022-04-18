//
//  main.swift
//  findTarget
//
//  Created by wesion on 2022/3/21.
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
var setArr:Set<Int> = []
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
       guard let root = root else{
           return false
       }
       if setArr.contains(k - root.val){
            return true
       }
        setArr.insert(root.val)
       return findTarget(root.left,k) && findTarget(root.right,k)
    }

