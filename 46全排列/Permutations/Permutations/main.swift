//
//  main.swift
//  Permutations
//
//  Created by wesion on 2021/8/19.
//
var res:[[Int]] = []
    var path:[Int] = []
    var used:[Bool] = []
func permute(_ nums: [Int]) -> [[Int]] {
       
       used = Array.init(repeating:false, count: nums.count)
       dfs(nums,0)
       return res
   }
   func dfs(_ nums: [Int],_ idx:Int){
       
       if path.count == nums.count{
           res.append(path)
           return
       }
       for i in 0..<nums.count{
           if used[i] {
               continue
           }
           used[i] = true
           path.append(nums[i])
           dfs(nums,i+1)
           used[i] = false
           path.removeLast()
       }
   }



let nums:[Int] = [1,2,3]

let a = permute(nums)

print(a)
