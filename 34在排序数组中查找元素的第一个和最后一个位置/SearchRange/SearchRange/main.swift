//
//  main.swift
//  SearchRange
//
//  Created by wesion on 2021/8/16.
//

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    
    var a:[Int] = [-1,-1]
    
    let min = binarySearch(nums, target, true)
    let max = binarySearch(nums, target, false)
    
    a = [min,max]
    return a
  }

func binarySearch(_ nums: [Int], _ target: Int,_ ismin:Bool) -> Int {
    var l = 0
    var r = nums.count-1
    var a:Int = -1
    if ismin {
        //只考虑最小的值所以不用管右边的，只要管理最左边的值
        while l <= r {
            let mid = (l + r)>>1
            //所以这里只要只要nums[mid]>=target就符合
            if nums[mid] >= target  {
                r = mid - 1
                if nums[mid] == target {
                    a = mid
                }
            }else{
                l = mid + 1
                
            }
        }
    }else{
        //只考虑最大的值所以不用管左边的，只要管理最右边的值
        while l <= r {
            let mid = (l + r)>>1
            if nums[mid] > target  {
                r = mid - 1
            }else{
                l = mid + 1
                if nums[mid] == target {
                    a = mid
                }
            }
        }
    }
   
    return a
}


var nums: [Int] = []

let a = searchRange(nums, 0)
print(a)

