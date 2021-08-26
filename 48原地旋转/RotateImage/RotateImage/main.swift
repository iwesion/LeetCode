//
//  main.swift
//  RotateImage
//
//  Created by wesion on 2021/8/26.
//

func rotate(_ matrix: inout [[Int]]) {
    
//    var newmatrix = matrix
//
//
//    for i in 0..<matrix.count {
//        for j in 0..<matrix.count {
//
//            newmatrix[j][matrix.count-i-1] = matrix[i][j]
//        }
//    }
//    matrix = newmatrix
    
    let n = matrix.count
        //先对角线变换
          for i in 0..<n {
            for j in i..<n {
              let temp = matrix[i][j]
              matrix[i][j] = matrix[j][i]
              matrix[j][i] = temp
            }
          }
        //水平镜像变换--> j只要替换半边
          for i in 0..<n {
            for j in 0..<n/2 {
              let temp = matrix[i][j]
              matrix[i][j] = matrix[i][n-j-1]
              matrix[i][n-j-1] = temp
            }
          }
        
        
    
    
}
var matrix = [[1,2,3],[4,5,6],[7,8,9]]

rotate(&matrix)
