//
//  main.swift
//  maxScore
//
//  Created by wesion on 2022/1/21.
//

import Foundation

func maxScore(_ cardPoints: [Int], _ k: Int) -> Int {
       let len:Int = cardPoints.count - k
    var s:Int = Int.max
       for i in 0..<cardPoints.count-len{
           var a = cardPoints[i]
           for j in i..<i+len{
               a += cardPoints[j]
           }
           s = min(a,s)
       }
    return cardPoints.reduce(0,+) - s
   }
maxScore([12,4,3,213,2], 2)


