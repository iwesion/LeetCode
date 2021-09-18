//
//  main.swift
//  ValidSudoku
//
//  Created by wesion on 2021/9/17.
//

import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {
    
//   print("行\(rowIsValid(board))")

//    print("列\(lineIsValid(board))")
//    print("阵\(threeIsValid(board))")
    return rowIsValid(board)&&lineIsValid(board)&&threeIsValid(board)
}
//行
func rowIsValid(_ board: [[Character]]) -> Bool {
    for items in board {
        var s:[Character:Int] = [:]
        for item in items {
            if s[item] != nil {
                s[item]! += 1
            }else{
                s[item] = 1
            }
            if s[item]! > 1 && item != "."{
                return false
            }
        }
    }
    return true
}
//列
func lineIsValid(_ board: [[Character]]) -> Bool {
    //因为board是9x9的
    for i in 0..<board.count {
        var s:[Character:Int] = [:]
        for j in 0..<board.count {
            if s[board[j][i]] != nil {
                s[board[j][i]]! += 1
            }else{
                s[board[j][i]] = 1
            }
            if s[board[j][i]]! > 1 && board[j][i] != "."{
                return false
            }
        }
    }
   
    return true
}
//3x3
func threeIsValid(_ board: [[Character]]) -> Bool {
  
    for m in 1...3 {
        var s:[Character:Int] = [:]
        let left = (m-1)*3
        let right = m*3
        for i in left..<right {
            for j in 0..<3 {
                if s[board[i][j]] != nil {
                    s[board[i][j]]! += 1
                }else{
                    s[board[i][j]] = 1
                }
                if s[board[i][j]]! > 1 && board[i][j] != "."{
                    return false
                }
            }
        }
    }
    for m in 1...3 {
        var s:[Character:Int] = [:]
        let left = (m-1)*3
        let right = m*3
        for i in left..<right {
            for j in 3..<6 {
                if s[board[i][j]] != nil {
                    s[board[i][j]]! += 1
                }else{
                    s[board[i][j]] = 1
                }
                if s[board[i][j]]! > 1 && board[i][j] != "."{
                    return false
                }
            }
        }
    }
    for m in 1...3 {
        var s:[Character:Int] = [:]
        let left = (m-1)*3
        let right = m*3
        for i in left..<right {
            for j in 6..<9 {
                if s[board[i][j]] != nil {
                    s[board[i][j]]! += 1
                }else{
                    s[board[i][j]] = 1
                }
                if s[board[i][j]]! > 1 && board[i][j] != "."{
                    return false
                }
            }
        }
    }
    
    
    
    return true
}




let board: [[Character]] =
    [["5","3",".",".","7",".",".",".","."]
    ,["6",".",".","1","9","5",".",".","."]
    ,[".","9","8",".",".",".",".","6","."]
    ,["8",".",".",".","6",".",".",".","3"]
    ,["4",".",".","8",".","3",".",".","1"]
    ,["7",".",".",".","2",".",".",".","6"]
    ,[".","6",".",".",".",".","2","8","."]
    ,[".",".",".","4","1","9",".",".","5"]
    ,[".",".",".",".","8",".",".","7","9"]]


let res =  isValidSudoku(board)
print(res)
