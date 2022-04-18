//
//  main.swift
//  lexicalOrder
//
//  Created by wesion on 2022/4/18.
//

import Foundation

func lexicalOrder(_ n: Int) -> [Int] {
    var res:[Int] = []
    for i in 1..<10{
        DFS(i,n,&res)
    }
    return res
}
func DFS(_ num:Int ,_ n:Int ,_ res:inout [Int] ){
    if num > n{
        return
    }
    res.append(num)
    for i in 0..<10{
        DFS(num*10+i,n,&res)
    }
    
}

let n = 13
let res = lexicalOrder(n)
print(res)
