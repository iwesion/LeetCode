//
//  main.swift
//  topKFrequent
//
//  Created by wesion on 2022/2/17.
//

import Foundation
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var res:[Int] = []
        var temp:[Int:Int] = [:]
        for item in nums{
            if temp[item] == nil{
                temp[item] = 1
            }else{
                temp[item]! += 1
            }

        }
       let n = temp.sorted{a,b in
            a.value > b.value
        }
        var s:[Int] = []
        for i in n{
            s.append(i.key)
        }
        
        
        return Array(s[0..<k])

    }
