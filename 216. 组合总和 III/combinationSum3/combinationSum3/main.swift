//
//  main.swift
//  combinationSum3
//
//  Created by wesion on 2022/2/8.
//

import Foundation

class Solution {
    var res:[[Int]] = []
    var stack:[Int] = []
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        stackbacking(k,n,1)
        return res
    }
    func stackbacking(_ k: Int, _ n: Int , _ startIdx: Int){
        if n == 0 && stack.count == k {
            res.append(stack)
            return
        }
        if stack.count == k || startIdx>9 {
            return
        }
        
        for i in startIdx...9 {
            stack.append(i)
            stackbacking(k, n-i, i+1)
            stack.popLast()
        }
    }
}
let k = 3, n = 9
let s = Solution().combinationSum3(k, n)
print(s)
