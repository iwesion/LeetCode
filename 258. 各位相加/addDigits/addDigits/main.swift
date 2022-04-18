//
//  main.swift
//  addDigits
//
//  Created by wesion on 2022/3/3.
//

import Foundation

func addDigits(_ num: Int) -> Int {
    var arr = Array(String(num))
    print(arr)
    while arr.count > 1{
        var s:Int = 0
        for i in arr{
            print(i.wholeNumberValue ?? 0)
            let ii = i.wholeNumberValue ?? 0
            
            s += ii
        }
        arr = Array(String(s))
    }
    return arr.first!.wholeNumberValue!
}
let num = 38
addDigits(num)

