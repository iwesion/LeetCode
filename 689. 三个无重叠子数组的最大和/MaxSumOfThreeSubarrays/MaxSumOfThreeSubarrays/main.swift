//
//  main.swift
//  MaxsumsOfThreeSubarrays
//
//  Created by wesion on 2021/12/8.
//

import Foundation
//暴力算法
//func maxSumOfThreeSubarrays(_ nums: [Int], _ k: Int) -> [Int] {
//        var sums :Int = 0
//        var arr:[Int:[Int]] = [:]
//        for i in 0..<nums.count-3*k{
//            let a = sumArr(Array(nums[i..<i+k]))
//            for j in i+k..<nums.count-2*k{
//                let b = sumArr(Array(nums[j..<j+k]))
//                 for m in j+k..<nums.count-k+1{
//                     let c = sumArr(Array(nums[m..<m+k]))
//                     if sums > a+b+c{
//                         continue
//                     }else{
//                         sums = a+b+c
//                         print(sums)
//                         if arr[sums] != nil{
//                             continue
//                         }else{
//                             if arr.count > 0 && arr.popFirst()!.key < sums {
//                                 arr[sums] = [i,j,m]
//                             }else{
//                                 arr[sums] = [i,j,m]
//                             }
//                         }
//                     }
//
//                 }
//
//            }
//
//        }
//
//    return arr[sums]!
//
//    }



func arrSum(_ arr:[Int]) -> Int {
    
    var sum:Int = 0
    for item in arr {
        sum += item
    }
    return sum
}




let nums = [7,13,20,19,19,2,10,1,1,19], k = 3

let res =  maxSumOfThreeSubarrays(nums , k)
print(res)
