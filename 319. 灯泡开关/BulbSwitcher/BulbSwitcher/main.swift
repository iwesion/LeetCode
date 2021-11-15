//
//  main.swift
//  BulbSwitcher
//
//  Created by wesion on 2021/11/15.
//

import Foundation

func bulbSwitch(_ n: Int) -> Int {
    var x:[Int] = Array.init(repeating: 1, count: n )
    
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    if n == 2 {
        return 1
    }
    return  Int(sqrt(Double(n)))
  
}

func getRes(_ arr:[Int]) -> Int {
    var res = 0
    
    for i in arr {
        if i > 0{
            res += 1
        }
    }
    return res
}


let n = 6

print(bulbSwitch(n))




