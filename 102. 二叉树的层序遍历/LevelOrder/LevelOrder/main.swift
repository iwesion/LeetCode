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

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    var res:[[Int]] = []
    dfs(root, 0 , &res)
    
    return res
    
    
}
func dfs(_ root: TreeNode?,_ deep:Int , _ res:inout [[Int]]){
    guard let root = root else {
        return
    }
    if deep >= res.count {
        res.append([root.val])
    }else{
        res[deep].append(root.val)
    }
    
    
    dfs(root.left, deep+1,&res)
    dfs(root.right, deep+1,&res)
    
}


////BFS
//    func levelOrder1(_ root: TreeNode?) -> [[Int]] {
//        var res:[[Int]] = []
//        var queue:[TreeNode] = []
//        guard let root = root else{
//            return res
//        }
//        queue.append(root)
//        while !queue.isEmpty{
//            let size = queue.count
//            var sub:[Int] = []
//            for i in 0..<size{
//                var node = queue.removeFirst()
//                sub.append(node.val)
//                if node.left != nil{
//                    queue.append(node.left!)
//                }
//                if node.right != nil{
//                    queue.append(node.right!)
//                }
//            }
//            res.append(sub)
//        }
//        return res
//    }


let root:TreeNode = .init(1, .init(9), .init(20, .init(15), .init(7)))
print(levelOrder(root))
