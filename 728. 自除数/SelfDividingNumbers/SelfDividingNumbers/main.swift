//
//  main.swift
//  SelfDividingNumbers
//
//  Created by wesion on 2022/3/31.
//

import Foundation

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var res:[Int] = []
        for i in left...right{
            if dividing(i){
                res.append(i)
            }
        }
        return res
    }
    func dividing(_ num:Int) -> Bool{
        var n = num
        var res:[Int] = []
        while n != 0 {
            let a = n % 10
            res.append(a)
            n /= 10
        }
        
        for item in res {
            if item == 0 || num % item != 0 {
                return false
            }
        }
        return true
    }
let l = 1, r = 22

let res = selfDividingNumbers(l, r)

print(res)
