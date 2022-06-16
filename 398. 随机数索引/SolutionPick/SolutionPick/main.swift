//
//  main.swift
//  SolutionPick
//
//  Created by wesion on 2022/4/25.
//

import Foundation

class Solution {
    var temp:[Int:[Int]] = [:]
    init(_ nums: [Int]) {
        for i in 0..<nums.count{
            let item = nums[i]
            print(item,i)
            if temp[item] != nil{
                temp[item]!.append(i)
            }else{
                temp[item] = [i]
            }
        }
        print(temp)
    }
    
    func pick(_ target: Int) -> Int {
        guard let arr = temp[target] else{
            return 0
        }
        return arr.randomElement()!

    }
}

Solution.init([1,2,3,3,3])
