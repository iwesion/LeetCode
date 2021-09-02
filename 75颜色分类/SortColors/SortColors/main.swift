//
//  main.swift
//  SortColors
//
//  Created by wesion on 2021/9/2.
//

////冒泡
//func sortColors(_ nums: inout [Int]) {
//    let n = nums.count
//    for i in 0..<n {
//        for j in 0..<(n - 1 - i) {
//            print("\(i)-\(j)")
//            if nums[j] > nums[j + 1] {
//                nums.swapAt(j, j + 1)
//            }
//        }
//    }
//    print(nums)
//}

//双指针，
func sortColors(_ nums: inout [Int]) {
    //p从左边开始存放最小值
    var p:Int = 0
    //q从右边开始存放最大值
    var q:Int = nums.count - 1
    if nums.count > 1 {
        //遍历数组
        for i in 0..<nums.count {
            //当值为0时，和下标为P的对调位置
            if nums[i] == 0 {
                nums.swapAt(p, i)
                //p往后移位
                p += 1
            }else if nums[i] == 2 && q > i {//当值为2时，且i的位置小于最大的位置
                //从右边开始找出num[q]不等于2的拿到下标
                while nums[q] == 2 && q > i{
                    q -= 1
                }
                nums.swapAt(i, q)
                //当对调完发现这个值为特殊的0时，那么把他和p的位置对调一次
                if nums[i] == 0 {
                    nums.swapAt(p, i)
                    p += 1
                }
            }
            
        }
    }
    
    
    print(nums)
}

var nums = [2,2]
//[2,1,2]
//[2,0,0,0,0,1,2,2]
sortColors(&nums)



