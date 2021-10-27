//
//  main.swift
//  NextGreaterElement
//
//  Created by wesion on 2021/10/26.
//

import Foundation
/*
 1.先把nums2转化为字典
 2.遍历nums1,对应nums2拿到下标x
 3.根据下标x去遍历[x..<nums2.count]取到第一个比它大的值
 */
func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var res:[Int] = []
    
    var numsDic:[Int:Int] = [:]
    for i in 0..<nums2.count {
        numsDic[nums2[i]] = i
    }
    
    for val in nums1 {
        var num = -1
        for item in numsDic[val]!..<nums2.count {
            if val < nums2[item] {
                num = nums2[item]
                break
            }
        }
        res.append(num)
    }
    
    
    return res
    
}
//[-1,2,3]

let nums1 = [2,4], nums2 = [1,2,3,4]
print(nextGreaterElement(nums1, nums2))
