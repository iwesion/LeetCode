//
//  main.swift
//  toGoatLatin
//
//  Created by wesion on 2022/4/21.
//

import Foundation

func toGoatLatin(_ sentence: String) -> String {
    let s = sentence.components(separatedBy:" ")
    let arr = ["A","E","I","O","U","a","e","i","o","u"]
    var res:String = ""
    for (i,item) in s.enumerated(){
        var a = Array(item)
        if arr.contains(String(a.first!)){
            res += item
            res += "ma"
            res += addA(i)
            
        }else{
            let first = a.removeFirst()
            a.append(first)
            res += String(a)
            res += "ma"
            res += addA(i)
           
        }
        if i != s.count - 1 {
            res += " "
        }
        
    }
    return res
    
}
func addA(_ numb:Int) -> String{
    var res:String = "a"
    for _ in 0..<numb{
        res += "a"
    }
    return res
}
let sentence = "I speak Goat Latin"

let res = toGoatLatin(sentence)
print(res)
