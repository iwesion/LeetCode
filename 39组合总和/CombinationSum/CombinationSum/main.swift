//
//  main.swift
//  CombinationSum
//
//  Created by wesion on 2021/8/16.
//

//func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
//
//    var arr:[Int] = Array.init()
//    var res = [[Int]].init()
//    DFS(candidates, target, 0, &arr, &res)
//
//    return res
//  }
//
//func DFS(_ candidates: [Int], _ target: Int , _ begin :Int ,_ arr:inout[Int], _ res:inout[[Int]]) {
//    if target < 0  {
//        return
//    }
//    if target == 0  {
//        res.append(arr)
//    }
//
//    for i in begin..<candidates.count {
//        arr.append(candidates[i])
//        DFS(candidates, target - candidates[i], i, &arr, &res)
//        print(arr)
//        arr.removeLast()
//    }
//}
//
//let candidates = [2,3,4,7]
//
//let a = combinationSum(candidates, 7)
//
//print(a)



/*Try it again*/

var res:[[Int]] = []
var path:[Int] = []
func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    DFS(0, candidates, target, 0)
    return res
}


func DFS(_ s:Int ,_ candidates: [Int], _ target: Int, _ idx : Int){
    if s > target {
        return
    }
    if s == target{
        res.append(path)
        return
    }
    
    for i in idx..<candidates.count{
        path.append(candidates[i])
        DFS(s+candidates[i], candidates, target, i)
        path.popLast()
    }
    
}


let candidates = [2,3,4,7]

let a = combinationSum(candidates, 7)

print(a)
