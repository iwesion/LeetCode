//
//  main.swift
//  LevelOrderBottom
//
//  Created by wesion on 2021/11/17.
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

var res:[Int:[Int]] = [:]

func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    dfs(root, 0)
    var arr:[[Int]] = []
    
    for i in 0..<res.count {
        let v = res[res.count - 1 - i]
        arr.append(v!)
    }
    
    return arr
}
func dfs(_ root:TreeNode? ,_ depth:Int ) {
    
    if root == nil {
        return
    }
    if res[depth] != nil {
        res[depth]!.append(root!.val)
    }else{
        res[depth] = [root!.val]
    }
    dfs(root?.left, depth + 1)
    dfs(root?.right, depth + 1)
    
}
let root:TreeNode = .init(3, .init(9), .init(20, .init(15), .init(7)))


levelOrderBottom(root)
