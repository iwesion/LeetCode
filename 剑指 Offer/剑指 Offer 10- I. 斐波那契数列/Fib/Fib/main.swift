//
//  main.swift
//  Fib
//
//  Created by wesion on 2021/9/7.
//

func fib(_ n: Int) -> Int {
    if n==0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    var dp:[Int] = []
    
    dp.append(0)
    dp.append(1)
    
    
    
    for i in 2...n+1 {
       let dp_t = (dp[i-2] + dp[i-1])%1000000007
        dp.append(dp_t)
    }
    return dp[n]
    
}


let n = 50

let res = fib(n)

print(res)
