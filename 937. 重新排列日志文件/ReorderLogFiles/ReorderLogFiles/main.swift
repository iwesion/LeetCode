//
//  main.swift
//  ReorderLogFiles
//
//  Created by wesion on 2021/12/6.
//

import Foundation

func reorderLogFiles(_ logs: [String]) -> [String] {
    var numArr:[String] = []
    var strArr:[String] = []
    for i in 0..<logs.count {
      var item =  logs[i]
        if isNumArr(item.components(separatedBy: " ")[1]) {
            numArr.append(item)
        }else{
            strArr.append(item)
        }
        
    }
    strArr.sort { a, b in
        let aa = a.split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true)
        let bb = b.split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true)
        if aa[1] == bb[1] {
            return aa[0] < bb[0]
        }
        return aa[1] < bb[1]
    }
   

    return strArr + numArr
}
func isNumArr(_ str: String) -> Bool {
       if str == str.uppercased() {
           return true
       } else {
           return false
       }
   }
let logs = ["dig1 8 1 5 1","let1 art can","dig2 3 6","let2 own kit dig","let3 art zero"]
reorderLogFiles(logs)
