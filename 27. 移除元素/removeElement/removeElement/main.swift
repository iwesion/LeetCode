//
//  main.swift
//  removeElement
//
//  Created by wesion on 2022/2/17.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    //     nums = nums.filter{$0 != val}
    //    return nums.count
    
    let n = nums.count
    var res:Int = 0
    for i in 0..<n{
        if nums[i] != val{
            nums[res] = nums[i]
            res += 1
        }
    }
    return res
}
