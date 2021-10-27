//
//  main.swift
//  BuildTree
//
//  Created by wesion on 2021/10/26.
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

func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    let res:TreeNode = .init()
    if preorder.count <= 0 {
        return nil
    }
    //构建字典，为了根据前序遍历的值来取到中序遍历对应的下标
    var inorderDic:[Int:Int] = [:]
    for (i,item) in inorder.enumerated() {
        inorderDic[item] = i
    }
    res.val = preorder[0]
   
    //根据前序遍历的节点来判断中序遍历的节点在哪里，就可以判断左边树和右边树的个数
    let midInorder:Int = inorderDic[preorder[0]]!
    
    
    
    //中序遍历分割
    //左边
    let leftNodeInorder = Array(inorder[..<midInorder])
    //右边
    let rightNodeInorder = Array(inorder[midInorder+1..<inorder.endIndex])
    
    
    //前序遍历分割
    //左边（根据中序遍历拿到的左边树长度来截取）
    let leftNodePreorder = Array(preorder[1..<leftNodeInorder.count+1])
    //右边（根据中序遍历拿到的右边树长度来截取）
    let rightNodePreorder = Array(preorder[leftNodeInorder.count+1..<preorder.count])
    
    res.left = buildTree(leftNodePreorder,leftNodeInorder)
    res.right = buildTree(rightNodePreorder,rightNodeInorder)
    
    
    return res
    
}




let preorder = [3,9,20,15,7], inorder = [9,3,15,20,7]

let res = buildTree(preorder, inorder)

print(res)
