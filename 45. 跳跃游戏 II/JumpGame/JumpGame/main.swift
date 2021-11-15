//
//  main.swift
//  JumpGame
//
//  Created by wesion on 2021/11/10.
//

import Foundation

class Solution {
    func jump(_ nums: [Int]) -> Int {
        var res = 0
        //当前认为的最大数
        var k = 0
        //当前认为的最大数所指对应的下标
        var j = 0
        for (i,item) in nums.enumerated() {
            k = max(k, i + item)
            //到达最后直接退出
            if i == nums.count - 1 {
                break
            }
            //当走到他认为的最大数下标时，把在这时他认为最大下标赋值给J,res累加1
            if i == j {
                //
                j = k
                res += 1
            }
        }
        
        return res
    }
}

let  nums = [2,3,0,1,4]

let res = Solution.init().jump(nums)

print(res)
