//
//  main.swift
//  isAnagram
//
//  Created by wesion on 2022/3/14.
//

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
        var ss:[Character] = Array(s)
        var tt:[Character] = Array(t)
        if ss.count != tt.count{
            return false
        }
        var sss:[Character] = ss.sorted()
        var ttt = tt.sorted{a,b in
            a>b
        }
        for item in ttt{
            let a = sss.popLast()
            if item != a{
                return false
            }

        }
        return true

    }
