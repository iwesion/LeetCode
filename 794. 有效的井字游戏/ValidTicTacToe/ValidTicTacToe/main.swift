//
//  main.swift
//  ValidTicTacToe
//
//  Created by wesion on 2021/12/9.
//

import Foundation

func validTicTacToe(_ board: [String]) -> Bool {
        var dic : [Character:Int] = [" ":0,"X":0,"O":0]
        for item in board{
            let itemArr:[Character] = Array(item)
            for i in 0..<itemArr.count{
                if dic[itemArr[i]] != nil{
                    dic[itemArr[i]]! += 1
                }else{
                    dic[itemArr[i]] = 1
                }

            }
        }
        let a = checkO(board,"X") ,b = checkO(board, "O")
        let o = dic["O"]! , x = dic["X"]!
        if (o > x || x - o > 1) {
            return false
        }
        if (a && x <= o){
            return false
        }
        if (b && o != x) {
            return false
        }
        if (a && b) {
            return false
        }
        return true
    }
    //判断O是否在一条线上
    func checkO(_ board: [String] , _ str:Character) -> Bool{
        var arr:[[Character]] = []
        for item in board{
            let itemArr:[Character] = Array(item)
            arr.append(itemArr)
        }
        if arr[0][0] == str && arr[0][1] == str && arr[0][2] == str{
            return true
        }
        if arr[1][0] == str && arr[1][1] == str && arr[1][2] == str{
            return true
        }
        if arr[2][0] == str&&arr[2][1] == str&&arr[2][2] == str{
            return true
        }
        if arr[0][0] == str&&arr[1][1] == str&&arr[2][2] == str{
            return true
        }
        if arr[0][2] == str&&arr[1][1] == str&&arr[2][0] == str{
            return true
        }
        if arr[0][0] == str&&arr[1][0] == str&&arr[2][0] == str{
            return true
        }
        if arr[0][1] == str&&arr[1][1] == str&&arr[2][1] == str{
            return true
        }
        if arr[0][2] == str&&arr[1][2] == str&&arr[2][2] == str{
            return true
        }
        return false
    }
let n = ["XOX","OOX","XO "]

validTicTacToe(n)
