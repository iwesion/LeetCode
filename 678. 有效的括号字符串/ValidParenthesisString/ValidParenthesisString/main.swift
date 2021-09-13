//
//  main.swift
//  ValidParenthesisString
//
//  Created by wesion on 2021/9/13.
//

import Foundation

func checkValidString(_ s: String) -> Bool {
    if s.count < 1 {
        return true
    }
    let ss = Array.init(s)
    var leftStack:[Int] = []
    var x :[Int] = []
    
    for (i,item) in ss.enumerated() {
        print(i)
        switch item {
        case "(":
            leftStack.append(i)
        case "*":
            x.append(i)
        case ")":
            if leftStack.count>0 {
                leftStack.popLast()
            }else{
                if x.count>0 {
                    x.popLast()
                }else{
                    return false
                }
            }
        default: break
            
        }
    }
    while let starIndex = x.popLast(), let leftIndex = leftStack.popLast() {
         guard starIndex > leftIndex else {
           return false
         }
       }

       return leftStack.isEmpty
}

let s:String = "((((()(()()()*()(((((*)()*(**(())))))(())()())(((())())())))))))(((((())*)))()))(()((*()*(*)))(*)()"
//let s:String = "(())((())()()(*)(*()(())())())()()((()())((()))(*"
print(checkValidString(s))
