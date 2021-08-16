//
//  main.swift
//  MaximumProductSubarray
//
//  Created by wesion on 2021/8/11.
//

func maxProduct(_ nums: [Int]) -> Int {
    
    var sum = nums.first ?? 0
    
    
    for (i,item) in nums.enumerated() {
        
        var x = item
        if x > sum {
            sum = x
        }
        for j in i + 1 ..< nums.count {
            x *= nums[j]
            if x > sum {
                sum = x
            }
        }
        
    }
    
    return sum
}
maxProduct([-2,0,-1])
