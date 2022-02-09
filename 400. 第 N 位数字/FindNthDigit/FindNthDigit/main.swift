//
//  main.swift
//  FindNthDigit
//
//  Created by wesion on 2021/11/30.
//

import Foundation

func findNthDigit(_ n: Int) -> Int {
    // 基本规律:
    // [1, 9]        有9 * 1个数字     => 9 * 1 * 1     => 9 * 10^0 * 1
    // [10, 99]      有90 * 2个数字    => 9 * 10 * 2    => 9 * 10^1 * 2
    // [100, 999]    有900 * 3个数字   => 9 * 100 * 3   => 9 * 10^2 * 3
    // [1000, 9999]  有9000 * 4个数字  => 9 * 1000 * 4  => 9 * 10^3 * 4
    //                                                => 9 * 10^(n-1) * n
    // ...
    var n = n

            // 整数位数
            var d = 1
            var count = 9

            while n > d * count {
                n -= d * count
                d += 1
                count *= 10
            }
            let index = n - 1
            let start = Int(pow(Double(10), Double(d - 1)))

            let num = start + index / d
            let digitIndex = index % d
            let digit = (num / Int(pow(Double(10), Double(d - digitIndex - 1)))) % 10

            return digit
    }
findNthDigit(17)
