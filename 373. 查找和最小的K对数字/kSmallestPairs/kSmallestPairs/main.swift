//
//  main.swift
//  kSmallestPairs
//
//  Created by wesion on 2022/1/14.
//

import Foundation

//func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
//    var temp:[[Int]] = []
//        for i in 0..<nums1.count{
//            let iitem = nums1[i]
//                    for j in 0..<nums2.count{
//                        let jitem = nums2[j]
//
//                        if temp.isEmpty {
//                            temp.append([iitem,jitem])
//
//                        }else{
//                            while(!temp.isEmpty && temp.last![0] + temp.last![1] > (iitem+jitem)) {
//                                temp.popLast()
//                            }
//                            temp.append([iitem,jitem])
//                        }
//
//
//                    }
//    }
//    if k >  temp.count{
//                return temp
//            }
//            return  Array(temp[0..<k])
//    }
func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
    var temp:[[Int]] = []
            for i in 0..<nums1.count{
                let iitem = nums1[i]
                        for j in 0..<nums2.count{
                            let jitem = nums2[j]
                            temp.append([iitem,jitem])
                        }
        }
    let res = temp.sorted { a, b in
        a[0] + a[1] < b[0] + b[1]
    }
    
        if k >  res.count{
            return res
        }
        return  Array(res[0..<k])
    }
let nums1 = [1,1,2], nums2 = [1,2,3], k = 10

   print(kSmallestPairs(nums1, nums2, k))
