//
//  main.swift
//  FindMedianFromDataStream
//
//  Created by wesion on 2021/8/27.
//

class MedianFinder {
    var arr:[Int] = []
    
    /** initialize your data structure here. */
    init() {
        
    }
    
    func addNum(_ num: Int) {
        if arr.count == 0 || num>arr.last! {
            arr.append(num)
        }else{
            let index = sortArr(arr, num)
            arr.insert(num, at: index)
        }

    }
    
    func findMedian() -> Double {
        let mid = (arr.count-1)/2
                //偶数
                if arr.count % 2 == 0 {
                    return Double(arr[mid]+arr[mid+1])/2.0
                }else{
                //基数
                    return Double(arr[mid])
                }
        
        
    }
    //二分排序
    func sortArr(_ arr:[Int] , _ num :Int) -> Int {
        var left:Int = 0
        var right:Int = arr.count - 1
        while left < right {
            let mid = left+(right-left)/2
            if arr[mid] == num {
                return mid
            }
            if arr[mid] < num {
                left = mid + 1
            }else{
                right = mid
            }
            
        }
        return left
        
    }
}
let obj = MedianFinder()
obj.addNum(1)
obj.addNum(3)
let ret_1: Double = obj.findMedian()
obj.addNum(2)
let ret_2: Double = obj.findMedian()
print(ret_1,ret_2)
