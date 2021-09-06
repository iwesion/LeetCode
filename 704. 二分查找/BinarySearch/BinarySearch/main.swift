//
//  main.swift
//  BinarySearch
//
//  Created by wesion on 2021/9/6.
//

func search(_ nums: [Int], _ target: Int) -> Int {
    
    var low:Int = 0
    var high:Int = nums.count - 1
    
    while low <= high {
        let mid = low + (high - low)/2
        print(mid)
        print((low+high)>>2)
        
        
        if nums[mid] == target {
            return mid
        }
        if nums[mid] > target  {
            high = mid - 1
        }
        if nums[mid] < target  {
            low = mid + 1
        }
   
    }
    
    return -1
}


var nums = [-1,0,3,5,8,12], target = 9

print(search(nums, target))
