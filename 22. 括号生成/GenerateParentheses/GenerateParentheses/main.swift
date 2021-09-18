//
//  main.swift
//  GenerateParentheses
//
//  Created by wesion on 2021/9/16.
//

import Foundation

func generateParenthesis(_ n: Int) -> [String] {
    var res:[String] = []
    let dic :[String:Int] = ["(":1,")":-1]
    //因为左边必须为"("
    var s = 1
    var n = n-1
    
    
    var x = 0
    
    for i in 0...n {
        var str = "("
        str += "("
        for j in 0...n {
            str += ")"
        }
        print(str)
    }
    
    
    
    
    return res
}




let res = generateParenthesis(3)

print(res)
