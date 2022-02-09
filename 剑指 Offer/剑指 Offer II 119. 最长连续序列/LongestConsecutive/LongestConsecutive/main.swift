//
//  main.swift
//  LongestConsecutive
//
//  Created by wesion on 2021/12/1.
//

import Foundation

func longestConsecutive(_ nums: [Int]) -> Int {
    
    
    var hasMap:[Int:Int] = [:]
    for item in nums{
        if hasMap[item] != nil{
            hasMap[item]! += 1
        }else{
            hasMap[item] = 1
        }
    }
    let sortHasMap = hasMap.sorted{a,b in
        a.key < b.key
    }
    var res:Int = 0
    var n = Int.min
    for item in sortHasMap{
        let key = item.key
        var num = 0
        if key < n{
            continue
        }else{
            n = key
        }
        //这里还是需要用map来判断是否存有该值
        while hasMap[n] != nil {
            n += 1
            num += 1
        }
        res = max(res , num)
    }
    
    
    
    print(res)
    return 0
    
}
let nums = [9,1,4,7,3,-1,0,5,8,-1,6]
longestConsecutive(nums)

