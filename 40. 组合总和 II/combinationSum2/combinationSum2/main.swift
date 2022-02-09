//
//  main.swift
//  combinationSum2
//
//  Created by wesion on 2022/2/9.
//

import Foundation
var res:[[Int]] = []
var path:[Int] = []
func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    // 有重复元素就排序，无论什么算法
    var candidates = candidates.sorted(by: {$0 < $1})
    search(0, candidates, target, 0)
    return res
}

func search(_ s: Int , _ candidates: [Int], _ target: Int ,_ idx :Int){
    if s > target {
        return
    }
    if s ==  target{
        res.append(path)
        return
    }
    for i in idx..<candidates.count {
        //因为candidates是排序过的，所以判断是否等于上一个值
        if(i>idx && candidates[i]==candidates[i-1]){
            continue
            
        }
        path.append(candidates[i])
        search(s+candidates[i], candidates, target, i+1)
        path.popLast()
    }
    
}

let candidates = [10,1,2,7,6,1,5], target = 8

let ress = combinationSum2(candidates, target)
print(ress)
