//
//  main.swift
//  DistributeCandies
//
//  Created by wesion on 2021/8/31.
//

func distributeCandies(_ candyType: [Int]) -> Int {
   
    var res:[Int:Int] = .init()
    
    
    for item in candyType {
        res[item] = item
    }

    if res.count > candyType.count/2{
      return  candyType.count/2
    }

    return res.count
}

let candyType:[Int] = [1,1,2,3]

let res = distributeCandies(candyType)

print(res)
