//
//  main.swift
//  Permutations
//
//  Created by wesion on 2021/8/19.
//

func permute(_ nums: [Int]) -> [[Int]] {
    var res:[[Int]] = []
    var arr:[Int] = Array.init()
  
    DFS(nums, 0, &arr, &res)
   
    
    
    return res
}

func DFS(_ nums: [Int],_ len:Int ,_ arr:inout[Int] , _ res:inout[[Int]]) {
    if arr.count == nums.count {
        res.append(arr)
        arr.removeAll()
    }
    
    
    for i in 0..<nums.count {
       
        
    }
    
}



let nums:[Int] = [1,2,3]

let a = permute(nums)

print(a)
