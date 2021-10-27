//
//  main.swift
//  SearchMatrix
//
//  Created by wesion on 2021/10/25.
//

import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for items in matrix {
        if items[0] <= target {
            for item in items {
                if item == target {
                    return true
                }
            }
        }
    }
    
    return false
    
}
let matrix = [[-5]], target = -5
print(searchMatrix(matrix, target))
