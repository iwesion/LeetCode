//
//  main.swift
//  IntegerReplacement
//
//  Created by wesion on 2021/11/19.
//

import Foundation

func integerReplacement(_ n: Int) -> Int {
    return   dfs(n,0)
}
func dfs(_ n:Int, _ k:Int) -> Int{
    if n == 1{
        return k
    }
    if n%2 == 0{
        return  dfs(n/2,k+1)
    }else{
        let res = min(dfs(n+1,k+1),dfs(n-1,k+1))
        return res
    }
    
}
