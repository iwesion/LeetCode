//
//  main.swift
//  GroupAnagrams
//
//  Created by wesion on 2021/11/19.
//

import Foundation
//看题解变化了hasmap
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var res:[[String]] = []
    var dic:[[Character]:[String]] = [:]
    for item in strs{
        let a = Array(item).sorted()
        if dic[a] != nil {
            dic[a]!.append(item)
        }else{
            dic[a] = [item]
        }
    }
    for item in dic.values{
        res.append(item)
    }
    return res
}
//第一次尝试
//func groupAnagrams(_ strs: [String]) -> [[String]] {
//        var strArr = strs.sorted{a,b in
//            a < b
//        }
//        var dic:[[Character:Int]:[String]] = [:]
//        for i in 0..<strArr.count{
//            var s:[Character:Int] = [:]
//            for val in strArr[i]{
//                if s[val] == nil{
//                    s[val] = 1
//                }else{
//                    s[val]! += 1
//                }
//            }
//           if dic.keys.contains{a in
//            a == s
//           }{
//               dic[s]!.append(strArr[i])
//           }else{
//               dic[s] = [strArr[i]]
//           }
//        }
//        var res:[[String]] = []
//        for item in dic.values{
//            res.append(item)
//        }
//    return dic.values
//    }
let strs = ["eat", "tea", "tan", "ate", "nat", "bat"]

groupAnagrams(strs)
