//
//  main.swift
//  ModifyString
//
//  Created by wesion on 2022/1/5.
//

import Foundation

func modifyString(_ s: String) -> String {
        var arr = Array(s)
        let s:[Character] = ["a","b","c"]
        //问号只要跟前后不一样就可以了，默认从3个取一个（左右2个所以肯定能取到不一样的）
        for i in 0..<arr.count{
         if arr[i] == "?"{
             for item in s{
                 if i == 0{
                     if arr.count < 2 || item != arr[i+1]{
                         arr[i] = item
                     }
                 }else if i < arr.count - 1 {
                    if item != arr[i-1] && item != arr[i+1]{
                         arr[i] = item
                     }
                 }else{
                     if item != arr[i-1] {
                         arr[i] = item
                     }
                 }

             }
         }
        }
        return String(arr)
    }

let s = "?"
print(modifyString(s))
