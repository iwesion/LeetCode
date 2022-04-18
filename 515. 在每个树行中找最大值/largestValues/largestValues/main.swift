//
//  main.swift
//  largestValues
//
//  Created by wesion on 2022/4/9.
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
// //BFS
// func largestValues(_ root: TreeNode?) -> [Int] {
//     var res:[Int] = []
//     var queue:[TreeNode] = []
//     guard let root = root else{
//         return res
//     }
//     queue.append(root)
//     while !queue.isEmpty{
//         let size = queue.count
//         var maxV = Int.min
//         for i in 0..<size{
//             let node = queue.removeFirst()
//             maxV = max(maxV,node.val)
//             if node.left != nil{
//                 queue.append(node.left!)
//             }
//             if node.right != nil{
//                 queue.append(node.right!)
//             }
//         }
//         res.append(maxV)
//     }
//     return res

// }
func largestValues(_ root: TreeNode?) -> [Int] {
    var res:[Int] = []
    DFS(root,0,&res)
    return res
}
func DFS(_ root:TreeNode?,_ deep:Int, _ res :inout [Int]){
    guard let root = root else{
        return
    }
    let val  = root.val
    if res.isEmpty || res.count == deep{
        res.append(val)
    } else{
        let a = max(res[deep],val)
        res[deep] = a
    }
    DFS(root.left,deep+1,&res)
    DFS(root.right,deep+1,&res)
    
}
let res = largestValues(.init(1, .init(3, .init(5), .init(3)), .init(2, nil, .init(9))))
print(res)
