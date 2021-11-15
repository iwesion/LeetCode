//
//  main.swift
//  ReverseInteger
//
//  Created by wesion on 2021/11/8.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var res:Int = 0
        if x == 0 {
            return res
        }
        
        var x = x
        
        while x != 0 {
            let a = x % 10
            res = res * 10 + a
            if res > Int32.max || res < Int32.min {
                      return 0
                    }
            x = x/10
            
        }
       
        return res
        
    }
}

let res = Solution.init().reverse(1234)

