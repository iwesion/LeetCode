//
//  main.swift
//  LevelOrder
//
//  Created by wesion on 2021/10/20.
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
//var res:[Int:[Int]] = [:]
//func levelOrder(_ root: TreeNode?) -> [[Int]] {
//
//
//
//    var xres:[[Int]] = []
//
//
//    tree(root, 0)
//    for item in res.sorted(by: { item1, item2 in
//        item1.key < item2.key
//    }) {
//        xres.append(item.value)
//    }
//
//    return xres
//}
//func tree(_ root:TreeNode? , _ deep:Int) {
//
//    if root != nil {
//        if res[deep] == nil {
//            res[deep] = [root!.val]
//        }else{
//            res[deep]!.append(root!.val)
//        }
//
//    }else{
//        return
//    }
//    tree(root?.left, deep+1)
//    tree(root?.right, deep+1)
//}
var res:[[Int]] = []
func levelOrder(_ root: TreeNode?) -> [[Int]] {
    
    dfs(root, 0)
    
    return res
    
    
}
func dfs(_ root: TreeNode?,_ deep:Int){
    if root == nil {
        return
    }
    if res.count > 0{
        if res.count > deep {
            res[deep].append(root!.val)
        }else{
            res.append([root!.val])
        }
    }else{
        res.append([root!.val])
    }
    
    
    
    dfs(root?.left, deep+1)
    dfs(root?.right, deep+1)
    
}

let root:TreeNode = .init(1, .init(9), .init(20, .init(15), .init(7)))
print(levelOrder(root))
