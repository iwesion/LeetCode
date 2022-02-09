//
//  main.swift
//  partition
//
//  Created by wesion on 2022/2/9.
//

import Foundation

var res:[[String]] = []
var path:[String] = []
func partition(_ s: String) -> [[String]] {
    
    
    DFS(s, 0)
    
    return res
}


func DFS(_ s: String , _ idx:Int){
    if idx == s.count {
        res.append(path)
        return
    }
    
    for i in idx..<s.count {
       let sarr = Array(s)
        let str = String(sarr[idx...i])
        if palindrome(str) {
            path.append(str)
            DFS(s, i+1)
            path.removeLast()
        }else{
            continue
        }
        
        
    }
    
    
}


func palindrome(_ s : String) -> Bool{
    let arr = Array(s)
    var left:Int = 0
    var right:Int = arr.count-1
    
    while left<right {
        if arr[left] != arr[right] {
            return false
        }
        left += 1
        right -= 1
    }
    
    return true
    
}



let s = "aab"

let ss = partition(s)

print(ss)
