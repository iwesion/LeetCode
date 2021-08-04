

//暴力-->超时
//func maxArea(_ height: [Int]) -> Int {
//
//    var maxSum = 0
//
//
//    for (idx,item) in height.enumerated() {
//
//        var a = height.count - 1
//
//        while a >= 0 {
//
//            let mins = min(item, height[a])
//            maxSum = max(maxSum, mins*(a - idx))
//
//
//            a -= 1
//        }
//
//    }
//
//
//
//    return maxSum
//}


func maxArea(_ height: [Int]) -> Int {
    var left = 0
    var right = height.count - 1
    var sum = 0
    
    
    while left != right {
        sum = max(sum, (right - left) * min(height[left], height[right]))
        
        
        if height[left] >= height[right] {
            
            right -= 1
        }else{
            left += 1
        }
         
       
    }
    
    return sum
}

let height = [1,1]

maxArea(height)
