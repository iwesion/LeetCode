//
//  main.swift
//  findBottomLeftValue
//
//  Created by wesion on 2022/2/28.
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
    var path:Int = 0
    var res :Int = 0
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        find(root,0)
        return res
    }
    
    func find (_ root: TreeNode?,_ deep:Int){
        if root == nil{
            return
        }
        if root!.left != nil && root!.left!.left == nil && root!.left!.right == nil{
            if path < deep{
                res = root!.left!.val
            }
        }
        if root!.left != nil{
            path = deep+1
            find(root!.left,deep+1)
        }
        if root!.right != nil{
            path = deep+1
            find(root!.right,deep+1)
        }
        
    }
}

let root : TreeNode = .init(2, .init(1), .init(3))
let res = Solution.init().findBottomLeftValue(root)
print(res)
