//
//  main.swift
//  maxConsecutiveAnswers
//
//  Created by wesion on 2022/3/29.
//

import Foundation

func maxConsecutiveAnswers(_ answerKey: String, _ k: Int) -> Int {
    var res:Int = 0
    
    let ask:[Character] = Array(answerKey)
    
    return max(getCnt("T", ask, k), getCnt("F", ask, k))
    
}

func getCnt(_ c:Character,_ ask:[Character],_ k: Int) -> Int{
    var res:Int = 0
    var cnt = 0
    var j = 0
    
    for i in 0..<ask.count {
        
        if ask[i] == c {
            cnt += 1
        }
        while cnt > k {
            if ask[j] == c {
                cnt -= 1
                j += 1
            }
        }
        res = max(res, i - j + 1)
    }
    return res
}



let answerKey = "TFFT", k = 2
let res = maxConsecutiveAnswers(answerKey, k)
print(res)
