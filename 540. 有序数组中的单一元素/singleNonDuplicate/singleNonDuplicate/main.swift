//
//  main.swift
//  singleNonDuplicate
//
//  Created by wesion on 2022/2/14.
//

import Foundation
//步进的做法
//func singleNonDuplicate(_ nums: [Int]) -> Int {
//       var res = nums[0]
//       for i in stride(from:0,to:nums.count,by:2){
//           if i >= 2{
//               if nums[i] != nums[i-1]{
//                   res = nums[i]
//               }
//           }
//       }
//       return res
//   }

//二分法
func singleNonDuplicate(_ nums: [Int]) -> Int {
    
    var l = 0
    var r = nums.count - 1
    
    while l<r{
        let mid = (l + r) / 2
        if mid % 2 == 0 {
            if mid + 1 < nums.count && nums[mid] == nums[mid+1] {
                l = mid + 1
            }else{
                r = mid
            }
        }else{
            if mid - 1 > 0 && nums[mid] == nums[mid - 1] {
                l = mid + 1
                
            }else{
                r = mid
            }
        }
    }
    return nums[r]
    
}
