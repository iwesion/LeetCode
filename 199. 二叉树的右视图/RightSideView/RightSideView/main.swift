//
//  main.swift
//  RightSideView
//
//  Created by wesion on 2021/10/18.
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
var res:[Int] = []

   func rightSideView(_ root: TreeNode?) -> [Int] {
       traverse(root,0)
       
       return res
   }
func traverse(_ root:TreeNode?,_ deep:Int ) {
    var ndeep = deep
    if root == nil {
        return
    }
    if deep == res.count {
        res.append(root!.val)
    }
    ndeep += 1
    traverse(root!.right,ndeep)
    traverse(root!.left,ndeep)
    
}


    let root:TreeNode = .init(1, .init(2, nil, .init(5)), .init(3, nil, .init(4)))
    print(rightSideView(root))


