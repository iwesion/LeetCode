//
//  main.swift
//  findSubsequences
//
//  Created by wesion on 2022/2/11.
//

import Foundation

class Solution {
    var res:[[Int]] = []
    var path:[Int] = []
    func findSubsequences(_ nums: [Int]) -> [[Int]] {
        dfs(nums,0)
        
        return Array(Set(res))
        
    }
    
    func dfs(_ nums: [Int] ,_ idx:Int){
        print(path)
        if path.count>1 {
            res.append(path)
        }

        if path.count==nums.count{
           
            return
        }
        for i in idx..<nums.count{
            if !path.isEmpty && path.last!>nums[i]{
                continue
            }
            path.append(nums[i])
            dfs(nums,i+1)
            path.removeLast()
        }
    }
}

let nums = [4,6,7,7]


let res = Solution.init().findSubsequences(nums)
print(res)

