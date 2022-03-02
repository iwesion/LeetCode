//
//  main.swift
//  evalRPN
//
//  Created by wesion on 2022/2/17.
//

import Foundation

func evalRPN(_ tokens: [String]) -> Int {
    var stack:[Int] = []
    var res:Int = 0
    for item in tokens{
        //当取到符号，则压出栈顶的2个值来操作，并把得到的值入栈
        if item == "+" || item == "-" || item == "*" || item == "/"{
            let n = stack.popLast()!
            let m = stack.popLast()!
            var s:Int = 0
            if item == "+"{
                s = n + m
            }else if item  == "-"{
                //这里减数和被减数关系搞清楚（栈顶的元素应该是被操作的）
                s = m - n
            }else if item  == "*"{
                s = n * m
            }else{
                //这里除数和被除数关系搞清楚
                s = m / n
            }
            stack.append(s)
            res = s
        }else{
            stack.append(Int(item)!)
        }
    }
    return res
}
let tokens = ["2","1","+","3","*"]

print( evalRPN(tokens))
