//
//  main.swift
//  ThreeSumClosest
//
//  Created by wesion on 2021/11/1.
//

import Foundation

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    //target为负数的话怕越界
    var res:Int = Int.max - abs(target)
    //先数组排序
    let nums = Array(nums.sorted())
    for i in 0..<nums.count-2 {
        //定义2个指针
        var j = i+1 , k = nums.count - 1
        while j < k {
            let sum = nums[i] + nums[j] + nums[k]
            
            if sum == target {
                return target
            }else if sum > target {
                if abs(sum - target) < abs(res - target) {
                    res = sum
                }
                k -= 1
            }else{
                if abs(sum - target) < abs(res - target) {
                    res = sum
                }
                j += 1
            }
            
            
        }
    }
    
    
    
    return res
}
let nums = [1,1,1,1], target = -100

print(threeSumClosest(nums, target))
