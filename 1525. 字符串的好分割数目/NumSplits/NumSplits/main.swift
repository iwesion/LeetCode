//
//  main.swift
//  NumSplits
//
//  Created by wesion on 2021/10/9.
//

import Foundation

func numSplits(_ s: String) -> Int {
    var res:Int = 0
    let numSplitsArr = Array(s)
    var revArr:[Character] = []
    
    for item in numSplitsArr.reversed() {
        revArr.append(item)
    }
    let left:[Int] = px(numSplitsArr)
    let right:[Int] = px(revArr)
    
    for i in 0..<numSplitsArr.count-1 {
//        print("left=\(left[i]),r==\(right[numSplitsArr.count-1-i-1])")
        if left[i] == right[numSplitsArr.count-1-i-1] {
            res += 1
        }
    }
    return res
}

func px(_ arr:[Character]) -> [Int] {
    var ss:[Int] = Array.init(repeating: 0, count: arr.count)
    var kk:[Character:Int] = [:]
    
    for i in 0..<arr.count {
    if kk[arr[i]] == nil {
        kk[arr[i]] = 1
    }else{
        kk[arr[i]]! += 1
    }
        ss[i] = kk.count
    }
    return ss
}

let s = "acbadbaada"

print(numSplits(s))
