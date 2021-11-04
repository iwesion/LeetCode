//
//  main.swift
//  SelfCrossing
//
//  Created by wesion on 2021/10/29.
//

import Foundation

func isSelfCrossing(_ distance: [Int]) -> Bool {
    if distance.count < 4 {
        return false
    }
    
    for i in 3..<distance.count {
        
        if distance[i] >= distance[i-2] && distance[i-1] <= distance[i-3] {
            return true
        }
        
        if i>=4 && distance[i-1] == distance[i-3] && distance[i] + distance[i-4] >= distance[i-2] {
            return true
        }
        
        
        if i>=5 && (distance[i-1] <= distance[i-3]) && (distance[i-2] > distance[i-4]) && (distance[i] + distance[i-4] >= distance[i-2]) && (distance[i-1] + distance[i-5] >= distance[i-3]) {
            return true
        }
        
    }
    return false
    
}

let distance = [1,1,2,1,1]
print(isSelfCrossing(distance))
