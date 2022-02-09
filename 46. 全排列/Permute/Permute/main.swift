//
//  main.swift
//  Permute
//
//  Created by wesion on 2021/11/24.
//

import Foundation

var ress:[[Int]] = []
func permute(_ nums: [Int]) -> [[Int]] {
   
    var numss = nums

    for i in 0..<nums.count {
        let newNums:[Int] = numss.filter { a in
            a != numss[i]
        }
        print(dfs(newNums, nums[i], 1))
    }
    return ress
}
func dfs(_ nums: [Int] , _ root:Int, _ depth:Int ) -> [Int]{
    let numss = nums
    var res  = [root]
    if nums.count == 0 {
        return res
    }
    for i in 0..<nums.count{
        let newNums:[Int] = numss.filter { a in
            a != numss[i]
        }
       
      return  dfs(newNums,nums[i],depth+1)
    }
    return res
}
permute([1,2,3])
