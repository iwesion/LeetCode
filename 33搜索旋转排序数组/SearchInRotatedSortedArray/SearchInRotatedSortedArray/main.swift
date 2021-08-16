//
//  main.swift
//  SearchInRotatedSortedArray
//
//  Created by wesion on 2021/8/13.
//

func search(_ nums: [Int], _ target: Int) -> Int {
    
    if nums.isEmpty {
                return -1
            }
            var l = 0, r = nums.count - 1
            while l <= r {
                let mid = (l + r) >> 1
                if nums[mid] == target {
                    return mid
                }
                //判断前半部分是否是递增的
                if nums[l] <= nums[mid] {
                    if nums[l] <= target && nums[mid] > target {
                        r = mid - 1
                    } else {
                        l = mid + 1
                    }
                } else {
                    if nums[mid] < target && nums[r] >= target {
                        l = mid + 1
                    } else {
                        r = mid - 1
                    }
                }
            }
            return -1
}

let nums:[Int] = [3,4,5,1,2]




 print(search(nums, 4))
