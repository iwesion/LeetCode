//
//  main.swift
//  TrappingRainWater
//
//  Created by wesion on 2021/8/17.
//

func trap(_ height: [Int]) -> Int {
    var sum:Int = 0

    if height.count <= 2  {
        return 0
    }
    
    var maxleftarr = Array.init(repeating: 0, count: height.count)
    
    var maxrightarr = Array.init(repeating:0 , count: height.count)
    
    for i in 1..<height.count-1 {
        
        maxleftarr[i] = max(height[i-1], maxleftarr[i-1])
  
    }
    for i in stride(from: height.count-2, to: 0, by: -1) {
        
        maxrightarr[i] = max(height[i+1], maxrightarr[i+1])
  
    }
    
    
    
    for i in 1..<height.count-1 {


        let minStr = min(maxleftarr[i], maxrightarr[i])

        if minStr > height[i] {

            sum += minStr - height[i]
        }



    }
    return sum


}

//func trap(_ height: [Int]) -> Int {
//
//
//    //左右边缘不判断
//    for i in 1..<height.count-1 {
//        var l = i
//
//
//    }
//
//
//
//
//}



let height:[Int] = [0,1,0,2,1,0,1,3,2,1,2,1]

let a = trap(height)
print(a)
