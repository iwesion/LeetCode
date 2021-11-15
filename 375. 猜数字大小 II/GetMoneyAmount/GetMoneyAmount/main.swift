//
//  main.swift
//  GetMoneyAmount
//
//  Created by wesion on 2021/11/12.
//

import Foundation

func getMoneyAmount(_ n: Int) -> Int {
    var cache:[[Int]] = Array.init(repeating: Array.init(repeating: 0, count: n+1), count: n+1)
    return dfs(1, n,&cache)
    
}
func dfs(_ l:Int, _ r:Int ,_ cache :inout [[Int]]) -> Int {
    if l>=r {
        return 0
    }
    if cache[l][r] != 0  {
        return cache[l][r]
    }
    var ans = 0x3f3f3f3f
    for i in l...r {
        let cur = max(dfs(l, i-l, &cache), dfs(i+1, r,&cache)) + i
        
        ans = min(ans, cur)
        
    }
    cache[l][r] = ans
    return ans
    
}

print(getMoneyAmount(10))
