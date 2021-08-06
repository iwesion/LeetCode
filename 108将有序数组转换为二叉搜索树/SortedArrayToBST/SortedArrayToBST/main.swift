//
//  main.swift
//  SortedArrayToBST
//
//  Created by wesion on 2021/8/6.
//

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

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    let x = heaper(nums: nums, left: 0, right: nums.count-1)
    
    
    return x
}

func heaper(nums:[Int],left:Int,right:Int) -> TreeNode? {
    if left > right {
        return nil
    }
    let mid = (left + right) >> 1
    print(mid)
    let root = TreeNode.init(nums[mid])
    root.left = heaper(nums: nums, left: left, right: mid-1)
    root.right = heaper(nums: nums, left: mid+1, right: right)
    
    return root
}

var nums:[Int] = [-10,-3,0,5,9]

sortedArrayToBST(nums)
