//
//  main.swift
//  BSTIterator
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
class BSTIterator {
    var rtArr:[Int] = []
    var i = 0
    init(_ root: TreeNode?) {
        LDR(root)
    }
    
    func next() -> Int {
       i += 1
       return rtArr[i-1]
    }
    
    func hasNext() -> Bool {
        return i < rtArr.count
    }
    func LDR(_ root:TreeNode?){
        if root == nil {
            return
        }
        LDR(root!.left)
        rtArr.append(root!.val)
        LDR(root!.right)
    }
}

BSTIterator.init(.init(3,.init(5), nil))
