//
//  main.swift
//  BuildTree
//
//  Created by wesion on 2021/10/27.
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

/// 从中序与后序遍历序列构造二叉树
/// - Parameters:
///   - inorder: 中序遍历
///   - postorder: 后序遍历
/// - Returns:二叉树
func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
    let res:TreeNode = .init()
    if postorder.count == 0 {
        return nil
    }
    res.val = postorder.last!
    
    var inorderDic:[Int:Int] = [:]
    for i in 0..<inorder.count {
        inorderDic[inorder[i]] = i
    }
    
    //根据后序遍历先拿到根节点
    let rootInt:Int = inorderDic[postorder.last!]!
    //前序遍历拆分
    //左边
    let leftInorder:[Int] = Array(inorder[0..<rootInt])
    //右边
    let rightInorder:[Int] = Array( inorder[rootInt+1..<inorder.count])
    
    //后序遍历拆分
    //左边
    let leftPostorder:[Int] = Array(postorder[0..<leftInorder.count])
    
    //右边
    let rightPostorder:[Int] = Array(postorder[leftInorder.count..<(rightInorder.count+leftInorder.count)])
     
    res.left = buildTree(leftInorder, leftPostorder)
    res.right = buildTree(rightInorder, rightPostorder)
    
    return res
    
}

let inorder = [9,3,15,20,7] , postorder = [9,15,7,20,3]

let res = buildTree(inorder,postorder)

print(res)
