//
//  main.swift
//  isAlienSorted
//
//  Created by wesion on 2022/5/17.
//

import Foundation
/*
 1.新建字典获取新字母表排序
 2.遍历words，通过新字母表的下标去建立对应原字母表的word
 3.排序对应的字母表
 */
func isAlienSorted(_ words: [String], _ order: String) -> Bool {
    var orderDic:[Character:Int] = [:]
    for (index,item) in order.enumerated(){
        orderDic[item] = index + Int(Character("a").asciiValue!)
    }
    var s:[String] = []
    for i in 0..<words.count{
        let itemArr = Array(words[i])
        var a:[Character] = []
        for (index,item) in itemArr.enumerated(){
            a.append(Character(UnicodeScalar(orderDic[item]!)!))
        }
        s.append(String(a))
    }
    var sSort = s.sorted()
    return sSort == s
    
}

let words = ["hello","leetcode","world","word",], order = "hlabcdefgijkmnopqrstuvwxyz"

isAlienSorted(words, order)


