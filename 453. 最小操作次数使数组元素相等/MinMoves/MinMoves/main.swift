//
//  main.swift
//  MinMoves
//
//  Created by wesion on 2021/10/20.
//

import Foundation

func minMoves(_ nums: [Int]) -> Int {
    let minNum:Int = nums.min()!
    var res = 0
    for item in nums {
        res += item - minNum
    }
    return res
    
}


let nums = [1,1,1]
print(minMoves(nums))
