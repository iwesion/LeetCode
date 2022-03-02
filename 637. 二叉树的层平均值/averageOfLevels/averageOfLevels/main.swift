//
//  main.swift
//  averageOfLevels
//
//  Created by wesion on 2022/2/11.
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
class Solution {
    
    
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var res:[Double] = []
        var queue:[TreeNode] = []
        guard let root = root else {
            return res
        }
        queue.append(root)
        while !queue.isEmpty{
            let size = queue.count
            var sum = 0
            for _ in 0..<size {
                let node = queue.removeFirst()
                sum += node.val
                if node.left != nil{
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
                
            }
            res.append(Double(sum/size))
            
        }
        
        
        
        return res
    }
}
