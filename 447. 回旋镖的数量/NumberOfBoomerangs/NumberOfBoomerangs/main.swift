//
//  main.swift
//  NumberOfBoomerangs
//
//  Created by wesion on 2021/9/13.
//

func numberOfBoomerangs(_ points: [[Int]]) -> Int {
    var res = 0
    for i in points {
        var freqMap:[Int: Int] = [:]
        
        for j in points {
            
            /// 计算距离公式不用开根号
            let s = (i[0]-j[0])*(i[0]-j[0]) + (i[1]-j[1])*(i[1]-j[1])
            //把距离存到freqMap里，相同距离的则累计加1
            if freqMap[s] != nil {
                freqMap[s]! += 1
            } else {
                freqMap[s] = 1
            }
            
        }
        //计算排列组合公式 n * (n - 1)
        for item in freqMap.values {
            res += item*(item - 1)
        }
    }
    return res
}
let points =  [[1,1],[2,2],[3,3]]

let res = numberOfBoomerangs(points)

