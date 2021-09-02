//
//  main.swift
//  quickSort
//
//  Created by wesion on 2021/8/27.
//

func quickSort(a: inout [Int], low: Int, high: Int) {
    if low >= high { // 递归结束条件
        return
    }
    var low = low
    var high = high
    
    let key = a[low]
    
    while low < high {
        // 从右边开始比较，比key大的数位置不变
        while low < high && a[high] >= key {
            high -= 1
        }
        // 只要出现一个比key小的数，将这个数放入左边i的位置
        a[low] = a[high]
        
        // 从左边开始比较，比key小的数位置不变
        while low < high && a[low] <= key {
            low += 1
        }
        // 只要出现一个比key大的数，将这个数放入右边j的位置
        a[high] = a[low]
    }
    a[low] = key // 将key放入i的位置，则左侧数都比key小，右侧数都比key大
    quickSort(a: &a, low: low, high: low - 1) // 左递归
    quickSort(a: &a, low: low + 1, high: high) // 右递归
}
 
// 示例
var m = [2,3,5,7,1,4,6,15,5,2,7,9,10,15,9,17,12]
quickSort(a: &m, low: 0, high: m.count - 1)
print(m)
// 结果：[1, 2, 2, 3, 4, 5, 5, 6, 7, 7, 9, 9, 10, 12, 15, 15, 17]
