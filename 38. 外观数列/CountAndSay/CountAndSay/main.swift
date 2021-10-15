//
//  main.swift
//  CountAndSay
//
//  Created by wesion on 2021/10/15.
//

import Foundation
func countAndSay(_ n: Int) -> String {
    var res:String = "1"
    if n < 2 {
        return res
    }
    for i in 2...n {
        res = fb(i, res)
    }
    
    
    return res
}


func fb(_ n : Int , _ res:String) -> String {
    var resb:String = ""
    
    let resArr = Array(res)
    var temp:[Character:Int] = [:]
    
    for  (i,item) in resArr.enumerated() {
        
        if temp.isEmpty {
            temp[item] = 1
        }else{
            if temp[item] == nil {
                guard let pop = temp.popFirst() else{
                    return ""
                }
                resb += "\(String(describing: pop.value))\(pop.key)"
                temp[item] = 1
            }else{
                temp[item]! += 1
            }
            
        }
        if i == resArr.count-1 && !temp.isEmpty {
            guard let pop = temp.popFirst() else{
                return ""
            }
            resb += "\(String(describing: pop.value))\(item)"
        }
        
        
        
    }
    return resb
    
}
print(countAndSay(1))
print(countAndSay(2))
print(countAndSay(3))
print(countAndSay(4))
print(countAndSay(5))
print(countAndSay(6))
