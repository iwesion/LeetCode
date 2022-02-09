//
//  main.swift
//  IncreasingTriplet
//
//  Created by wesion on 2021/12/16.
//

import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
    var first:Int = Int.max
    var second:Int = Int.max
    for item in nums {
        if item <= first {
            first = item
        }else if item <= second{
            second = item
        }else{
            return true
        }
    }
    return false
}
