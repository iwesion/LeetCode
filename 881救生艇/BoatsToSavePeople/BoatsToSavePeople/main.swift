//
//  main.swift
//  BoatsToSavePeople
//
//  Created by wesion on 2021/8/26.
//

func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    var res:Int = 0
    let npeople = people.sorted()
    var left:Int = 0
    var right:Int = people.count - 1
    
    while left <= right {
        if npeople[left] + npeople[right] <= limit {
            left += 1
            right -= 1
        }else{
            right -= 1
        }
        res += 1
    }
    
    
    
    return res
   }

let people = [3,5,3,4], limit = 3

let res = numRescueBoats(people, limit)
print(res)
