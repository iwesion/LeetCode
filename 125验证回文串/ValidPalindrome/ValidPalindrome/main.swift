//
//  main.swift
//  ValidPalindrome
//
//  Created by wesion on 2021/8/23.
//

func isPalindrome(_ s: String) -> Bool {
    var arr:[Character] = []
    
    
    for item in s.lowercased() {
        if (item >= "a" && item <= "z") || (item >= "0" && item <= "9"){
            arr.append(item)
        }
    }
    for i in 0..<arr.count {
        
        if arr[i] != arr[arr.count - 1 - i] {
            return false
        }
        
    }
    
    return true
    }

let s = "0P"

let res = isPalindrome(s)

print(res)
