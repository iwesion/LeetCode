//
//  main.swift
//  sortArrayByParity
//
//  Created by wesion on 2022/4/28.
//

import Foundation

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var nums = nums
    var left = 0 ,right = nums.count - 1
    
    while left < right{
        print(left,right)
        if nums[left] % 2 != 0 && nums[right] % 2 == 0{
            nums.swapAt(left,right)
            left += 1
            right -= 1
        }
        if nums[left] % 2 == 0{
            left += 1
        }
        if nums[right] % 2 != 0{
            right -= 1
        }
        print(left,right)
    }
    return nums
    
}
let nums = [3,1,2,4]
print(sortArrayByParity(nums))
