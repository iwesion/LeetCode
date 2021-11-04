//
//  main.swift
//  ReorderedPowerOf2
//
//  Created by wesion on 2021/10/28.
//

import Foundation


func reorderedPowerOf2(_ n: Int) -> Bool {
    
    var i = 1
    //遍历所有2的幂
    while i<(1<<30) {
        //如果这里为真则直接匹配到，直接输出真，没有的话继续用下一个2的幂
        if check(i,n) {
            return true
        }
        i *= 2
    }
    return false
}

func check(_ i:Int, _ n:Int) -> Bool {
    print(i)
    var i:Int = i
    var n:Int = n
    //统计每个数字的出现次数
    var cnts:[Int:Int] = [:]
    while i != 0 {
        //用i中每个数字的出现次数初始化cnts
        if cnts[i%10] != nil {
            cnts[i%10]! += 1
        }else{
            cnts[i%10] = 1
        }
        i /= 10
    }
    
    //看n中数字的出现次数能不能匹配上
    while n != 0 {
        if cnts[n%10] == nil{
            //如果数组没出现在对象中直接输出false
            return false
        }else{
            cnts[n%10]! -= 1
        }
        n /= 10
        print(cnts)
    }
    //检查cnts数组是否全部为0，如果有不为0的位置说明该数字没匹配上
    for item in cnts {
        if item.value != 0 {
            return false
        }
    }
    return true
    
}




let n = 8219


let res = reorderedPowerOf2(n)
print(res)


