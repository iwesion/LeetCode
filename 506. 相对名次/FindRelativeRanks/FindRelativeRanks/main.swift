//
//  main.swift
//  FindRelativeRanks
//
//  Created by wesion on 2021/12/2.
//

import Foundation

func findRelativeRanks(_ score: [Int]) -> [String] {
    
    
    var t:[Int:Int] = [:]
    for (i,val) in score.enumerated(){
        t[i] = val
    }
    let sortT = t.sorted{a,b in
        a.value > b.value
    }
    var res:[String] = Array.init(repeating:"",count:score.count)
    
    for i in 0..<sortT.count{
        let item = sortT[i]
        var s :String
        if i == 0{
            s = "Gold Medal"
        }else if i == 1{
            s = "Silver Medal"
        }else if i == 2{
            s = "Bronze Medal"
        }else{
            s = String(i+1)
        }
        res[item.key] = s
    }
    return res
}

