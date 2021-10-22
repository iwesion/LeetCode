//
//  main.swift
//  MajorityElementII
//
//  Created by wesion on 2021/10/22.
//

import Foundation

func majorityElement(_ nums: [Int]) -> [Int] {
    var res :[Int] = []
    var dic:[Int:Int] = [:]
    if nums.count == 1 {
        return nums
    }
    
    for item in nums {
        if dic[item] == nil {
            dic[item] = 1
        }else{
            dic[item]! += 1
        }
       
    }
    for item in dic {
        if item.value > nums.count/3 {
            res.append(item.key)
        }
    }
    
    
    
    return res
}

let nums:[Int] = [3,2,1]
print(majorityElement(nums))

