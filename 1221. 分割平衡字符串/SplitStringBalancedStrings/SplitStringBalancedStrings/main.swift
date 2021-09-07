//
//  main.swift
//  SplitStringBalancedStrings
//
//  Created by wesion on 2021/9/7.
//

func balancedStringSplit(_ s: String) -> Int {
    let sarr = Array.init(s)
    //关键点
    let k:[Character:Int] = ["R":1,"L":-1]
    var sum = 0
    var res = 0
    
    for i in 0..<sarr.count {
        sum += k[sarr[i]]!
        if sum == 0 {
            res += 1
        }
    }
    return res
}

let s = "LLLLRRRR"

let res = balancedStringSplit(s)
 print(res)
