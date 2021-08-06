//
//  main.swift
//  FindPeakGrid
//
//  Created by wesion on 2021/8/6.
//

func findPeakGrid(_ mat: [[Int]]) -> [Int] {
    
    for (i,matitem) in mat.enumerated() {
    
        var mx = -1
        var tag = 0
        
        for (j,item) in matitem.enumerated() {
            if item > mx {
                print(j)
                
        
                
                
            }
            tag = j
            mx = max(item, mx)
            
        }
        
//        print(mx)
    }
    
    
    return [1,2]
}
let mat:[[Int]] = [[1,4],[3,2]]

findPeakGrid(mat)
