//
//  main.swift
//  reverseStr
//
//  Created by wesion on 2022/2/15.
//

import Foundation

func reverseStr(_ s: String, _ k: Int) -> String {
    var sArr:[Character] = Array(s)
    var res:String = ""
    for i in stride(from:0,to:sArr.count,by:2*k){
        if i + 2*k < sArr.count {
            res += rev(Array(sArr[i..<i+2*k]),k)
        }else{
            res += rev(Array(sArr[i..<sArr.count]) ,k)
        }
    }
    print(res)
    return ""
}

func rev(_ s: [Character], _ k: Int) -> String{
    if s.count < k {
        return String(s.reversed())
    }else{
        return String(s[0..<k].reversed())+String(s[k..<s.count])
    }
}
let s = "abcdefg", k = 2
reverseStr(s, k)


