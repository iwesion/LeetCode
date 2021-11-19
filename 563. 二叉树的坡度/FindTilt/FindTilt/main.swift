//
//  main.swift
//  FindTilt
//
//  Created by wesion on 2021/11/18.
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
var res:Int = 0

func findTilt(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0
    }
    
    return abs(LRD(root?.left) - findTilt(root?.right)) + findTilt(root?.left)   + findTilt(root?.right)
}
func LRD(_ root:TreeNode?) -> Int{
    if root == nil{
        return 0
    }
    return root!.val + LRD(root!.left) + LRD(root!.right)
    
}
let root:TreeNode = .init(4, .init(2, .init(3), .init(5)), .init(9, nil, .init(7)))
 print(findTilt(root)) 
