//
//  main.swift
//  reverseWords
//
//  Created by wesion on 2022/2/15.
//

import Foundation

func reverseWords(_ s: String) -> String {
    var ss = s.components(separatedBy:" ").filter{(item) -> Bool in
            return item != " " && item.count>0
           }
            var res:String = ""

            for i in 0..<ss.count{
                if i == ss.count - 1{
                    res += String(ss[ss.count - 1 - i])
                }else{
                    res += String(ss[ss.count - 1 - i])+" "
                }
                
            }

           return res
}

let s = "the sky is blue"

reverseWords(s)
