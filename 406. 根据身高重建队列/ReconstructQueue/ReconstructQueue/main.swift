//
//  main.swift
//  ReconstructQueue
//
//  Created by wesion on 2021/11/26.
//

import Foundation

func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
    let p = people.sorted{ a,b in
        a[1]<b[1]
    }
    
    let npeople = p.sorted{ a,b in
        a[0]>b[0]
    }
    print(npeople)
    var res:[[Int]] = []
    for val in npeople{
        let num:Int = val[1]
        let v = val[0]
        res.insert([v,num],at:num)
    }
    return res
}
let people = [[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]]
