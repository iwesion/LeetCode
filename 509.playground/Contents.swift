  func fib(_ n: Int) -> Int {
    if(n == 0) {return 0}
    if(n < 3) {return 1}
    var dp:[Int] = Array(repeating: 0, count: n+1)
    
    dp[0] = 0
    dp[1] = 1
    dp[2] = 1
    var i = 3
    
    while i <= n {
        dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]
        i += 1
    }
    return dp[n]
    
  }
  fib(25)
  
  
