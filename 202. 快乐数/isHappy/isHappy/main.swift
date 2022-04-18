//
//  main.swift
//  isHappy
//
//  Created by wesion on 2022/3/14.
//

import Foundation

//题意（无限循环），那么肯定在哈希表内会重复，只要判断结果等于1的情况或者哈希表重复这2种情况
var s:[Int:Int] = [:]
func isHappy(_ n: Int) -> Bool {
    var a = happy(n)
    while a != 1 {
        if  s[a] == nil{
            s[a] = 1
            a = happy(a)
            
        }else{
            return false
        }
    }
    return true
}
//转换
func happy(_ n : Int) -> Int{
    var n = n
    var res:Int = 0
    while n > 0{
        res += Int(n % 10)*Int(n % 10)
        n = n/10
    }
    return res
}
