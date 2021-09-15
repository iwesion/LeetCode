//
//  main.swift
//  FindPeakElement
//
//  Created by wesion on 2021/9/15.
//

import Foundation

func findPeakElement(_ nums: [Int]) -> Int {
    //暴力算最大
//    var max = nums[0]
//    var n = 0
//
//    for (i,value) in nums.enumerated() {
//        if value > max {
//            max = value
//            n = i
//        }
//    }
//    return n
    
    
    //二分O(logn)
    var left = 0
    var right = nums.count-1
    
    while left<right {
        let mid = left + (right - left) / 2
        if nums[mid + 1] < nums[mid] {
            //峰值在左边
            right = mid
        }else{
            left = mid + 1
        }
    }
    
    return left
    
}

let nums = [-2147483648,-2147483647]
print(findPeakElement(nums))
