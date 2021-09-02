//
//  main.swift
//  CorporateFlightBookings
//
//  Created by wesion on 2021/8/31.
//

func corpFlightBookings(_ bookings: [[Int]], _ n: Int) -> [Int] {
    var res:[Int] = Array.init(repeating: 0, count: n)

//    差分数组对应的概念是前缀和数组，对于数组 [1,2,2,4]，其差分数组为 [1,1,0,2]，差分数组的第i个数即为原数组的第 i-1 个元素和第i个元素的差值，也就是说我们对差分数组求前缀和即可得到原数组。

    for item in bookings {
        res[item[0]-1] += item[2]
        if item[1] < n {
            res [item[1]] -= item[2]
        }
    }
    for i in 1..<n {
        res[i] += res[i-1]
    }
    
    
    return res
}

let bookings:[[Int]] = [[1,2,10],[2,3,20],[2,5,25]], n = 5

let res =  corpFlightBookings(bookings, n)
print(res)
