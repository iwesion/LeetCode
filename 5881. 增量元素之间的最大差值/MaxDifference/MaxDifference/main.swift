//
//  main.swift
//  MaxDifference
//
//  Created by wesion on 2021/9/26.
//

import Foundation

func maximumDifference(_ nums: [Int]) -> Int {
    
    var res = -1
    for i in 0..<nums.count {
        for j in i..<nums.count {
            if nums[i] > nums[j] {
                
                break
            }else{
                res =  max(res, nums[j] - nums[i])
            }
        }
    }
   
    return res > 0 ? res : -1
    
}

let nums:[Int] = [9,4,3,2]
print(maximumDifference(nums))
