//
//  main.swift
//  PeakIndexInMountainArray
//
//  Created by wesion on 2021/10/14.
//

import Foundation

func peakIndexInMountainArray(_ arr: [Int]) -> Int {
    //arr长度大于等于3，首位肯定排除
    var left:Int = 1
    var right:Int = arr.count-2
    var res = 0
    
    while left <= right {
        let mid = left + (right - left) >> 1
        if arr[mid] >= arr[mid+1] {
            res = mid
            right = mid - 1
        }else{
            left = mid + 1
        }
        
    }
    return res
}


print(peakIndexInMountainArray([18,29,38,59,98,100,99,98,90]))
