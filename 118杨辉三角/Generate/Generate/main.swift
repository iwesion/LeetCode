//
//  main.swift
//  Generate
//
//  Created by wesion on 2021/8/10.
//

func generate(_ numRows: Int) -> [[Int]] {
    var arr:[[Int]] = Array.init(repeating: [], count: numRows)
    
    for i in 0..<numRows {
        arr[i] = Array.init(repeating: 1, count:  i+1)
    }
    
    for i in 0..<arr.count {
        if i < arr.count - 1 {
            for j in 0..<arr[i+1].count {
                if j>0 && j<arr[i+1].count-1 {
                    arr[i+1][j] = arr[i][j-1]+arr[i][j]
                }
            }
        }
        
    }
    
    return arr
}

 let a  = generate(5)

