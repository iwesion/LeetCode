//
//  main.swift
//  Generate
//
//  Created by wesion on 2021/8/10.
//

func getRow(_ rowIndex: Int) -> [Int] {
    if rowIndex == 0 {
        return [1]
    }else if rowIndex == 1 {
        return [1,1]
    }else{
        return getRowForIndex(rowIndex,[1,2,1] )
    }
    
    
    
}

func getRowForIndex(_ rowIndex: Int,_ row:[Int]) -> [Int] {
    if row.count < rowIndex+1 {
        var arr:[Int] = Array.init(repeating: 1, count: row.count+1)
        for i in 0..<arr.count {
            if i < arr.count-1 && i > 0{
                arr[i] = row[i-1] + row[i]
            }
        }
        
        return   getRowForIndex(rowIndex, arr)
    }else{
        return row
    }
}
let a  = getRow(2)

print(a)

//    var arr:[[Int]] = Array.init(repeating: [], count: numRows)
//
//    for i in 0..<numRows {
//        arr[i] = Array.init(repeating: 1, count:  i+1)
//    }
//
//    for i in 0..<arr.count {
//        if i < arr.count - 1 {
//            for j in 0..<arr[i+1].count {
//                if j>0 && j<arr[i+1].count-1 {
//                    arr[i+1][j] = arr[i][j-1]+arr[i][j]
//                }
//            }
//        }
//
//    }
//
//    return arr


