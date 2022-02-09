//
//  main.swift
//  CountConsistentStrings
//
//  Created by wesion on 2021/11/19.
//

import Foundation

func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    let allowedArr:[Character] = Array(allowed)
    var f:[Character:Int] = [:]
    for item in allowedArr{
        f[item] = 1
    }
    var res:Int = 0
    for item in words{
        let word = Array(item)
        var i = 0
        while i<word.count {
           
            if f[word[i]] == nil{
                break
            }
            i += 1
        }
        if i == word.count {
            res += 1
        }
        
        
    }
    return res
}
let allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
let res = countConsistentStrings(allowed, words)
print(res)
