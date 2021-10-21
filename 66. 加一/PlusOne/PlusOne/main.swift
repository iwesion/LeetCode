//
//  main.swift
//  PlusOne
//
//  Created by wesion on 2021/10/21.
//
/*给定一个由 整数 组成的 非空 数组所表示的非负整数，在该数的基础上加一。
 
 最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。
 
 你可以假设除了整数 0 之外，这个整数不会以零开头。*/

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var arr:[Int] = []
    var a = 1
    for (idx,item) in digits.enumerated().reversed() {
        if a>0 {
            if (item + 1)%10 == 0 {
                a = 1
                arr.append(0)
                if idx == 0 {
                    arr.append(1)
                }
            }else{
                arr.append(item+a)
                a = 0
            }
        }else{
            arr.append(item)
        }
    }
    return arr.reversed()
}
let digits = [1,0,0,0,0]
print(plusOne(digits))
