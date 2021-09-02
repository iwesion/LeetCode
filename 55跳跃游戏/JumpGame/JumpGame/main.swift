//
//  main.swift
//  JumpGame
//
//  Created by wesion on 2021/8/30.
//

func canJump(_ nums: [Int]) -> Bool {
    //k为当前能够到达的最大位置
    var k:Int = 0
    
    for i in 0..<nums.count {
        if i > k {
            //【关键】遍历元素位置下标大于当前能够到达的最大位置下标，不能到达
            return false
        }
        //能够到达当前位置，看是否更新能够到达的最大位置k
        k = max(k, i + nums[i])
        print(k)
    }
    //跳出则表明能够到达最大位置
    return true
    
}




let nums =   [3,2,1,0,4]

let res = canJump(nums)
print(res)
