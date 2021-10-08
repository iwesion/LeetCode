//
//  main.swift
//  PowerOfThree
//
//  Created by wesion on 2021/9/23.
//

import Foundation

func isPowerOfThree(_ n: Int) -> Bool {
//    if n<0 {
//        return false
//    }
//    var n = n
//
//    while (n%3==0) {
//        n = n/3
//    }
//
//    return n == 1
    
    
    return n > 0 && 1162261467 % n == 0;
}


let n = 19684
 print(isPowerOfThree(n))

