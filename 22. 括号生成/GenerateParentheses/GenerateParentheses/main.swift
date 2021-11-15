//
//  main.swift
//  GenerateParentheses
//
//  Created by wesion on 2021/9/16.
//

import Foundation

func generateParenthesis(_ n: Int) -> [String] {

    if n == 1 {
        return ["()"]
    }else{
        return addBracket(["()"],n-1)
    }
    
}

func addBracket(_ s:[String],_ n:Int) -> [ String] {
    var res:[ String] = []
    
    
    for item in s {
        
        for i in 0..<item.count {
            var item = item
            item.insert(contentsOf: "()", at: item.index(item.startIndex, offsetBy: i))
            if !res.contains(item) {
                res.append(item)
            }
            
        }
    }
    if n == 1 {
        return res
    }else{
        return addBracket(res, n - 1)
    }
       
    
}




let res = generateParenthesis(4)

print(res)
