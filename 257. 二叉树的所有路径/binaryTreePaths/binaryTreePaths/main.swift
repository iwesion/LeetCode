//
//  main.swift
//  binaryTreePaths
//
//  Created by wesion on 2022/2/22.
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
    var result = [String]()
    var temp = [String]()
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        dfs(root)
        return result
    }
    func dfs(_ node:TreeNode?){
        if node == nil {
            return
        }
        temp.append(String(node!.val))
        if node?.left == nil && node?.right == nil {
            result.append(temp.joined(separator: "->"))
        } else {
            dfs(node?.left)
            dfs(node?.right)
        }
        temp.removeLast()
    }
}

let root:TreeNode = .init(1, .init(2, nil, .init(5)), .init(3))
let ssss = Solution.init().binaryTreePaths(root)
print(ssss)

