//
//  main.swift
//  ZigzagLevelOrder
//
//  Created by wesion on 2021/10/21.
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
func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    if root == nil {
        return []
    }
    var resArr:[[Int]] = []
    fbs(root, 0)
    let sortRes = res.sorted { a, b in
        a.key < b.key
    }
    
    for (i,item) in sortRes.enumerated() {
        if i%2 == 0 {
            resArr.append(item.value)
        }else{
            let val:[Int] = item.value.reversed()
            resArr.append(val)
        }
    }
    
    return resArr
}
func fbs(_ root:TreeNode? , _ deep:Int) {
    let nroot = root
    if nroot != nil {
        if res[deep] == nil {
            res[deep] = [nroot!.val]
        }else{
            res[deep]!.append(nroot!.val)
        }
    }
    if nroot!.left != nil{
        fbs(nroot?.left, deep+1)
    }
    if nroot?.right != nil {
        fbs(nroot?.right, deep+1)
    }
    
    
}

let root:TreeNode = .init(3, .init(9), .init(20, .init(15), .init(7)))

print(zigzagLevelOrder(root))
