//
//  main.swift
//  LongestSubsequence
//
//  Created by wesion on 2021/11/5.
//

import Foundation

class Solution {
    func longestSubsequence(_ arr: [Int], _ difference: Int) -> Int {
        
        var ans = 0
        var dp = [Int: Int]()
        for a in arr {
            //判断a-difference这个值是否存在（如果存在那么dp[x]的值累计加1）
            dp[a] = (dp[a - difference] ?? 0) + 1
            
            ans = max(ans, dp[a]!)
        }
        return ans
    }
    
}
let arr = [1,5,7,8,5,3,4,2,1], difference = -2
let res = Solution.init().longestSubsequence(arr, difference)
print(res)
