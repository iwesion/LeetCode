//
//  main.swift
//  FindPoisonedDuration
//
//  Created by wesion on 2021/11/10.
//

import Foundation

class Solution {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        var res = 0
        for i in 0..<timeSeries.count - 1 {
            if timeSeries[i+1] - timeSeries[i] > duration {
                res += duration
            }else{
                res += timeSeries[i+1] - timeSeries[i]
            }
        }
        res += duration
        return res
    }
}
let timeSeries = [1,4], duration = 5
let res = Solution.init().findPoisonedDuration(timeSeries, duration)
print(res)
