//
//  main.swift
//  longestWord
//
//  Created by wesion on 2022/3/17.
//

import Foundation

func longestWord(_ words: [String]) -> String {
    let sortedWords = words.sorted()
    var res = ""
    var maxCount = 0
    var set = Set<String>()
    for i in sortedWords {
        print(String(i.dropLast()))
        if i.count == 1 || set.contains(String(i.dropLast())) {
            set.insert(i)
            if i.count > maxCount {
                res = i
                maxCount = i.count
            }
        }
    }
    return res
    
}

let s = ["b","br","bre","brea","break","breakf","breakfa","breakfas","breakfast","l","lu","lun","lunc","lunch","d","di","din","dinn","dinne","dinner"]
longestWord(s)
