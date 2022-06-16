//
//  main.swift
//  fallingSquares
//
//  Created by wesion on 2022/5/26.
//

import Foundation

func fallingSquares(_ positions: [[Int]]) -> [Int] {
    var res:[Int] = []
    var s:[[Int]] = []
    s.append([positions[0][0],positions[0][0]+positions[0][1]])
    res.append(positions[0][1])
    for i in 1..<positions.count{
        let a = positions[i]
        
        let norhight = res.last!
        //堆叠（x重叠）
        if a[0] < s[1]{
            
            res.append(a[1]+norhight)
        }else{
            s = [a[0],a[1] + a[0]]
            res.append(max(norhight,a[1]))
        }
    }
    return res
    
}
func overlap(_ temp:[Int],_ s:[[Int]]){
    for i in 0..<s.count {
        let a = s[i]
        if temp[0]  {
            <#code#>
        }
    }
    
}

