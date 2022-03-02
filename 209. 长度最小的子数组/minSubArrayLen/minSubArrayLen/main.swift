//
//  main.swift
//  minSubArrayLen
//
//  Created by wesion on 2022/2/18.
//

import Foundation
//1.暴力算法
//func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
//        var len:Int = 0
//        for i in 0..<nums.count{
//            if nums[i] == target{
//                return 1
//            }
//            var res = 0
//            for j in i..<nums.count{
//                res += nums[j]
//                if res >= target{
//                    if len == 0{
//                        len = j-i+1
//                    }else{
//                        len = min(len,j-i+1)
//                    }
//                }
//            }
//
//        }
//        return len
//    }



//2.
// 连续子数组 [numsl, numsl+1, ..., numsr-1, numsr] --->联想到滑动窗口
func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var res:Int = Int.max
        var start:Int = 0
        var end:Int = 0
        var s:Int = 0
        while end < nums.count{
            s += nums[end]
            while s >= target && start <= end{
                print(s)
                //end - start + 1是因为start和end是同一下标，并且这个值就比target大
                res = min(end - start + 1, res)
                
                //start往前移动一位,则s对应也要减去
                s -= nums[start]
                start += 1
            }
            end += 1
            
        }
    return res != Int.max ? res : 0
    }

let target = 7, nums = [2,3,1,2,4,3]
print(minSubArrayLen(target, nums))
