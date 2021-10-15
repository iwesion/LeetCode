//
//  main.swift
//  UniqueBinarySearchTreesII
//
//  Created by wesion on 2021/10/13.
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
func generateTrees(_ n: Int) -> [TreeNode?] {
    
    if n == 0 {
        return []
    }
    
    return generateTrees(1, n)
}

func generateTrees(_ start:Int,_ end:Int) -> [TreeNode?] {
    
    var res:[TreeNode] = []
    
    if start > end {
        
       
        return [nil]
    }
    
    for i in start...end {
        
        let leftArr = generateTrees(start, i-1)
        let rightArr = generateTrees(i+1, end)
        
        
        for leftItem in leftArr {
            for rightItem in rightArr {
                let newTree:TreeNode = .init(i)
                newTree.left = leftItem
                newTree.right = rightItem
                res.append(newTree)
            }
        }
        
        
        
        
        
    }
    
    
    return res
}


let res = generateTrees(3)

print(res)
