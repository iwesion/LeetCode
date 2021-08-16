//
//  main.swift
//  LongestPalindromicSubsequence
//
//  Created by wesion on 2021/8/12.
//

func longestPalindromeSubseq(_ s: String) -> Int {
    
    let sa = Array(s)
    var sr = Array(s)
    sr.reverse()
    
    var dp = Array(repeating: Array(repeating: 0, count: s.count+1), count: s.count+1)
    
    for i in 1...s.count {
        for j in 1...s.count {
            
            print("\(sa[i-1])--\(sr[j-1])")
            dp[i][j] = sa[i-1] == sr[j-1] ? dp[i-1][j-1] + 1 : max(dp[i-1][j], dp[i][j-1])
            print(dp[i][j])
        }
    }
//    print(dp)
    return dp.last!.last!
    
}
longestPalindromeSubseq("sadasdaf")
