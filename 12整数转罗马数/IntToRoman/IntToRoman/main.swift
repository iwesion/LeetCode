//
//  main.swift
//  IntToRoman
//
//  Created by wesion on 2021/8/4.
//

import Foundation
let temp:[(Int,String)] = [(1000,"M"),(900,"CM"),(500,"D"),(400,"CD"),(100,"C"),(90,"XC"),(50,"L"),(40,"XL"),(10,"X"),(9,"IX"),(5,"V"),(4,"IV"),(1,"I")]

func intToRoman(_ num: Int) -> String {
    var n = num
    
    var res = ""
    for i in temp {
        while n >= i.0 {
            n -= i.0
            res += i.1
        }
    }
    return res
    
}

let num = 1894

print(intToRoman(num))

