//
//  main.swift
//  combine7
//
//  Created by wesion on 2022/2/8.
//

import Foundation
var res:[[Int]] = []
var path:[Int] = []
func combine(_ n: Int, _ k: Int) -> [[Int]] {
    
    backtracking(n, k, 1)
    return res
    
}
func backtracking(_ n: Int, _ k: Int,_ startIdx:Int) {
    if (path.count == k) {
        res.append(path)
        return;
    }

    for i in startIdx..<n+1 {
        
        path.append(i)
        print(path)
        backtracking(n, k, i+1)
        path.popLast()
        print(path)
    }
}
var n = 4, k = 2
let re = combine(n, k)
print(re)
