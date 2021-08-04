//
//  main.swift
//  3sum
//
//  Created by wesion on 2021/7/21.
//

func threeSum(_ nums: [Int]) -> [[Int]] {
    //长度小于3个的时候直接返回【】
    if nums.count<3 {
        return []
    }
    //原数组先排序
    let s = nums.sorted { a, b in
        return a < b
    }
    //定义返回的暂存数组
    var backNums = Array<[Int]>()

    for a in 0...nums.count-3 {
        if s[a]>0 {
            break
        }
        //判断当前拿到的值和上一个值比较，如果相等则不处理，当拿到不相等时，才往后
        if a > 0 && s[a] == s[a - 1] {
            continue
        }
        
        //左边从a的后一位开始
        var left = a+1
        //右边直接从末尾结束
        var right = s.count - 1
        //当左指针小于右指针才走下面
        while left < right {
            
            if s[a] + s[left] + s[right] < 0{
                
                left += 1
                
                
            }else if s[a] + s[left] + s[right] > 0 {
                
                right -= 1
                
                
            }else if s[a] + s[left] + s[right] == 0 {

                backNums.append([s[a],s[left],s[right]])
                left += 1
                right -= 1
                //左指针移动的时候也判断一下是否和上一次的相等，如果相等则往右边移动，+1
                while left < right && s[left] == s[left - 1] {
                    left += 1
                }
                //右指针移动的时候也判断一下是否和上一次的相等，如果相等则往左边移动，-1
                while left < right && s[right] == s[right + 1] {
                    right -= 1
                }
                
            }
        }
        
        
    }
    
    return backNums
}


let nums:[Int] = [-2,0,1,1,2]

print(threeSum(nums))
