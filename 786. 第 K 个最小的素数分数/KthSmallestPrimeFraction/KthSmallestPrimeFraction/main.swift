//
//  main.swift
//  KthSmallestPrimeFraction
//
//  Created by wesion on 2021/11/29.
//

import Foundation
func kthSmallestPrimeFraction(_ arr: [Int], _ k: Int) -> [Int] {
    var res:[[Int]] = []
    for i in 0..<arr.count{
        let a = arr[i]
        for j in i+1..<arr.count{
            let b = arr[j]
            //所有整数互不相同。所以不判重
            res.append([a,b])
        }
        
    }
    let nres = res.sorted { a, b in
        Float(a[0])/Float(a[1]) < Float(b[0])/Float(b[1])
    }
    return nres[k-1]
}

let arr = [1,2,3,5], k = 3
kthSmallestPrimeFraction(arr, k)
