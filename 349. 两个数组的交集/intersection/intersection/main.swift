//
//  main.swift
//  intersection
//
//  Created by wesion on 2022/3/14.
//

import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var n1 = Set(nums1)
    var n2 = Set(nums2)
    var res:[Int] = []
    var nn1:[Int:Int] = [:]
    
    for item in n1{
        nn1[item] = 1
    }
    for item in n2{
        if nn1[item] != nil{
            res.append(item)
        }
    }
    return res
}

