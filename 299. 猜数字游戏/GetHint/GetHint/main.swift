//
//  main.swift
//  GetHint
//
//  Created by wesion on 2021/11/8.
//

import Foundation

class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        let secretArr = Array(secret)
        let guessArr = Array(guess)
        
        
        var res:String = ""
        
        var d:[Int] = Array.init(repeating: 0, count: 2)
        
        var secretDic:[Character:Int] = [:]
       
        
        
        for i in 0..<secretArr.count {
            if secretArr[i] == guessArr[i] {
               d[0] += 1
            }
            if secretDic[secretArr[i]] != nil {
                secretDic[secretArr[i]]! += 1
            }else{
                secretDic[secretArr[i]] = 1
            }
        }
        
        
        for item in guessArr {
            if secretDic[item] != nil{
                if secretDic[item]! >= 1 {
                    secretDic[item]! -= 1
                }
                
            }
        }
        
        var num:Int = secret.count
        
        for item in secretDic.values {
            num -= item
        }
        d[1] = num - d[0]
        
        
        res = String(d[0]) + "A" + String(d[1])  + "B"
        
        
        return res
        
    }
}


let secret = "1", guess = "1"
let res = Solution.init().getHint(secret, guess)

print(res)
