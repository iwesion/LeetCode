//
//  main.swift
//  Rand10
//
//  Created by wesion on 2021/9/6.
//

import Foundation

func rand7() -> Int {
    //1:下面是使用arc4random函数求一个1~100的随机数（包括1和100）
    
    let randomNumber:Int = Int(arc4random() % 7)
    
    return randomNumber
}


  
//1. 第一次rand7限定[1,6]，判断奇偶性，概率是1/2
//2. 第二次rand7限定[1,5]，概率是1/5
//3. 二者结合可以得出10种概率相同的结果

func rand10() -> Int {
    var first:Int = rand7()
    var second:Int = rand7()
    
    while first > 6 {
        first = rand7()
    }
    while second > 5 {
        second = rand7()
    }
    
    return (first&1) == 1 ? second : second + 5
    
}

print(rand10())
print(rand10())
print(rand10())
print(rand10())
print(rand10())
print(rand10())
