//
//  main.swift
//  UniqueBinarySearchTrees
//
//  Created by wesion on 2021/10/14.
//

import Foundation

public class TreeNode {
    public var val: Int?
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = nil; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func numTrees(_ n: Int) -> Int {
    if n <= 1 {
        return 1
    }
   
    return searchTrees(1, n)
}


func searchTrees(_ start:Int,_ end :Int) -> Int {
    var res:Int = 0

    if start > end {
        return 1
    }
    
    for i in start...end {
        let leftTrees = searchTrees(start, i-1)
        let rightTrees = searchTrees(i+1, end)
       res += leftTrees*rightTrees
        
        
    }
    
    return res
}

numTrees(19)
