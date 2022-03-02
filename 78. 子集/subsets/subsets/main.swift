//
//  main.swift
//  subsets
//
//  Created by wesion on 2022/2/10.
//

import Foundation

class Solution {
    var res:[[Int]] = []
    var path:[Int] = []
    func subsets(_ nums: [Int]) -> [[Int]] {
        
        DFS(nums,0)
        return res
    }
    func DFS(_ nums: [Int],_ idx:Int){
        //MARK: 这里收集子集，要放在终止添加的上面，否则会漏掉自己
        res.append(path)
        //终止条件可以不用加
        if idx>=nums.count{
            
            return
        }
        for i in idx..<nums.count{
            path.append(nums[i])
            DFS(nums,i+1)
            path.removeLast()
        }
    }
}

let nums = [1,2,3]
let res = Solution.init().subsets(nums)
print(res)
