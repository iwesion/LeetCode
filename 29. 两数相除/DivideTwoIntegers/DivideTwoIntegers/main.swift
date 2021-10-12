//
//  main.swift
//  DivideTwoIntegers
//
//  Created by wesion on 2021/10/12.
//

import Foundation

func divide(_ dividend: Int, _ divisor: Int) -> Int {
    
    //分母为0
    if dividend == 0 {
        return 0
    }
    //分子为1或者-1
    if divisor == 1 {
        return dividend
    }else if (divisor == -1) {
        if dividend > Int32.min {
            return -1 * dividend
        }
        return  Int(Int32.max)
    }
    var a : Int64 = Int64(dividend)
    var b : Int64 = Int64(divisor)
    var sign = 1
    if (a > 0 && b < 0) || (a < 0 && b > 0)  {
        sign = -1
    }
    a = a > 0 ? a : -a
    b = b > 0 ? b : -b
    let result : Int64 = div(a, b)
    
    if sign > 0 {
        return Int(result)
    }
    return Int(-result)
}
//eg:10-3为例
func div(_ a:Int64,_ b:Int64) -> Int64 {
    if a<b {
        return 0
    }
    var xb:Int64 = b
    //如果a比b大
    var cnt:Int64 = 1
    /*
     第一次：3+3和10比 --- 4
     第二次：3+3和4比 --- 0
     */
    while (xb+xb) <= a {
        cnt += cnt
        xb += xb
    }
//    print("\(cnt)----\(xb)")
    return Int64(cnt) + div(a-xb, b)
}


let dividend = 2147483648, divisor = 1

let res = divide(dividend, divisor)
print(res)
