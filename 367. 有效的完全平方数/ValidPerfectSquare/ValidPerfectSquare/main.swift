//
//  main.swift
//  ValidPerfectSquare
//
//  Created by wesion on 2021/11/4.
//

import Foundation
func isPerfectSquare(_ num: Int) -> Bool {
    
//    if num == 1 {
//        return true
//    }
//
//    var a = 1
//    var i = 1
//
//    while a < Int.max{
//        if a<=num {
//            i += 1
//            a = i*i
//            if a == num {
//                return true
//            }
//        }else{
//            return false
//        }
//    }
//
//    return false
    
    
    var right = num+1
    var left = 0
    while left < right {
        let mid = left + (right - left) / 2
        let target = mid * mid
        if target > num {
            right = mid
        }else if target < num{
            left = mid + 1
        }else{
            return true
        }
        
    }
    return false
    
}
