//
//  main.swift
//  minEatingSpeed
//
//  Created by wesion on 2022/6/7.
//

import Foundation

func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
       var l = 1,r = piles.max() ?? 0
       while l < r {
           let mid = (l + r) >> 1
           //用的小时比h小，所以应该增加
           if check(piles,mid) > h{
               l = mid + 1
           }else{
               r = mid
           }
           return l
       }
       return 0
   }
   func check(_ piles: [Int], _ mid: Int) -> Int {
       var res:Int = 0
       
       for item in piles{
            var a = 0
           if item > mid{
               a = Int(ceil(Double(item)/Double(mid))) 
               print(a)
           }else{
               a = 1
           }
          
           res += Int(a)
       }
print(mid,res)
       return res

   }
let piles = [3,6,7,11], h = 8
print(ceil(Double(4/7.0)))
minEatingSpeed(piles, h)
