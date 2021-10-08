//
//  main.swift
//  RepeatedDNASequences
//
//  Created by wesion on 2021/10/8.
//

import Foundation

func findRepeatedDnaSequences(_ s: String) -> [String] {
    var res:[String] = []
    var hsmap:[String:Int] = [:]
    let sArr:[Character] = Array(s)//直接比下面注释的快一倍
    if s.count<10 {
        return []
    }
    for i in 0...s.count-10 {
//        let indexN = s.index(s.startIndex, offsetBy: i)
//        let indexM = s.index(s.startIndex, offsetBy: i+10)
//        let item = s[indexN..<indexM]
        let item = String(sArr[i..<i+10])
        if hsmap[String(item)] != nil {
            hsmap[String(item)]! += 1
        }else{
            hsmap[String(item)] = 1
        }
    }
    for item in hsmap {
        if item.value > 1 {
            res.append(item.key)
        }
    }
    
  
    return res
}

let s =  "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"

let res = findRepeatedDnaSequences(s)
print(res)
