//
//  main.swift
//  TruncateSentence
//
//  Created by wesion on 2021/12/6.
//

import Foundation

func truncateSentence(_ s: String, _ k: Int) -> String {
    let sArr:[Character] = Array(s)
    var k = k
    var res:[Character] = []
    for i in 0..<sArr.count{
        
        if sArr[i] == " " {
            k -= 1
        }
        if k > 0 {
            res.append(sArr[i])
        }
    }
    print(String(res))
    return ""
}
let s = "Hello how are you Contestant", k = 4
truncateSentence(s, k)
