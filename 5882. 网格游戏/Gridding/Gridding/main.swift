//
//  main.swift
//  Gridding
//
//  Created by wesion on 2021/9/26.
//

import Foundation


//func gridGame(_ grid: [[Int]]) -> Int {
//    var res = 0
//
//    var one:[Int] = Array.init(repeating: 0, count: grid[0].count)
//    var dp:[[Int]] = Array.init(repeating: Array.init(repeating: 0, count: grid[0].count), count: grid[0].count)
//    for i in 0..<grid[0].count {
//        one[i] =  sums(grid, i)
//    }
//
//    for i in 0..<dp.count {
//      let second = dpGri(grid, i)
//
//        for j in 0..<second[0].count {
//            dp[i][j] =  sums(second, j)
//        }
//
//    }
//    var arr:[Int] = []
//
//    for item in dp {
//        arr.append(maxS(item))
//    }
//    res = arr.first!
//    for item in arr {
//        if item < res  {
//            res = item
//        }
//    }
//
//    return res
//}
func gridGame(_ grid: [[Int]]) -> Int {
    let vc = grid.count
           let hc = grid[0].count

           // 存点[r][c]能取得的最大点数，需加上当前点数[r][c]
           var dp: [[Int]] = Array.init(repeating: Array.init(repeating: 0, count: hc+1), count: vc)
           for i in 1...hc {
               dp[0][i] = dp[0][i-1] + grid[0][i-1]
               dp[1][i] = dp[1][i-1] + grid[1][i-1]
           }
           
           var res = Int.max
           for i in 1...hc {
               res = min(res, max(dp[0][hc] - dp[0][i], dp[1][i-1]))
           }
           
           return res
    
}

//数组最大
func maxS(_ arr: [Int])->Int{
    var maxx = 0
    for i in 0..<arr.count {
        if arr[i] > maxx {
            maxx = arr[i]
        }
    }
    return maxx
}
func minS(_ arr: [Int])->Int{
    var minS = 0
    for i in 0..<arr.count {
        if arr[i] < minS {
            minS = arr[i]
        }
    }
    return minS
}


//let grid = [[1,3,1,15],[1,3,3,1]]
//let grid = [[20,3,20,17,2,12,15,17,4,15],[20,10,13,14,15,5,2,3,14,3]]//63
//let grid = [[2,5,4],[1,5,1]]
let grid = [[3,3,1],[8,5,2]]

print(gridGame(grid))
