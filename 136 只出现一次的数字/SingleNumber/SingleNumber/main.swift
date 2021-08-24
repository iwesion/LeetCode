//
//  main.swift
//  SingleNumber
//
//  Created by wesion on 2021/8/24.
//

func singleNumber(_ nums: [Int]) -> Int {
    
    
    //用异或
    //  a ^ 0 = a
    //  a ^ a = 0
    //  a ^ b ^ a = a ^ a ^ b = 0 ^ b = b

    return nums.reduce(0) { $0 ^ $1 }
}

let nums = [2,2,1]

let res = singleNumber(nums)
print(res)



