//
//  main.swift
//  levelOrder
//
//  Created by wesion on 2022/2/11.
//
public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}
import Foundation

//class Solution {
//    var res:[[Int]] = []
//    func levelOrder(_ root: Node?) -> [[Int]] {
//        dfs(root,0)
//        return res
//    }
//    func dfs(_ root: Node?,_ deep:Int){
//        guard let root = root else {
//            return
//        }
//        if res.count<1{
//            res.append([root.val])
//        }else{
//            if res.count  > deep {
//              if res[deep].count>0{
//                  res[deep].append(root.val)
//              }else{
//                   res.append([root.val])
//              }
//            }else{
//                 res.append([root.val])
//            }
//
//        }
//        let deepp = deep+1
//        for i in 0..<root.children.count{
//            dfs(root.children[i],deepp)
//        }
//
//
//    }
//}

//BFS
func levelOrder(_ root: Node?) -> [[Int]] {
    var res:[[Int]] = []
    
    var queue:[Node] = []
    guard let root = root else {
        return res
    }
    queue.append(root)
    while !queue.isEmpty {
        let size = queue.count
        var sub:[Int] = []
        for i in 0..<size {
            let node = queue.removeFirst()
            sub.append(node.val)
            for item in node.children {
                queue.append(item)
            }
            
        }
        res.append(sub)
    }
    return res
}


let root:Node = .init(2)

