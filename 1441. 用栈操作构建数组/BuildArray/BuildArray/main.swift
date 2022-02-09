//
//  main.swift
//  BuildArray
//
//  Created by wesion on 2021/11/19.
//

import Foundation

func buildArray(_ target: [Int], _ n: Int) -> [String] {
    var res:[String] = []
    var dic:[Int:Int] = [:]
    for item in target {
        dic[item] = 1
    }
    for i in 1...target.last! {
        if dic[i] == nil {
            res.append("Push")
            res.append("Pop")
        }else{
            res.append("Push")
        }
    }
    
    
    return res
}

buildArray([1,3], 3)
