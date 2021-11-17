//
//  main.swift
//  MaxProduct
//
//  Created by wesion on 2021/11/17.
//

import Foundation
func maxProduct(_ words: [String]) -> Int {
    var arr:[Int] = Array.init(repeating: 0, count: words.count)
    
    for i in 0..<words.count  {
        let iteArr = Array(words[i])
        for j in iteArr{
            let ichar = j.asciiValue! - Character.init("a").asciiValue!
            arr[i] |= 1 << ichar
        }
    }
    var res = 0
    
    for i in 0..<words.count {
        for j in i..<words.count {
            if i != j {
                /*
                 ab和bc
                 000011
                 000110
                 -------
                 000101
                 
                 != 0
                 */
                if arr[i] & arr[j] == 0 {
                    res = max(res, words[i].count * words[j].count)
                }
            }
        }
    }
    
    return res
}
let res = maxProduct(["a","ab","abc","d","cd","bcd","abcd"])
print(res)
