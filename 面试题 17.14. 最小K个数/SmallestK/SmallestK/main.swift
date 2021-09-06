//
//  main.swift
//  SmallestK
//
//  Created by wesion on 2021/9/3.
//



func smallestK(_ arr: [Int], _ k: Int) -> [Int] {
//    let res = arr.sorted()
    var res = arr
    quickSort(a: &res, low: 0, high: res.count-1)
    let a = Array.init(res[0..<k])
    
    return a
    
}
//冒泡排序
func maopao(_ arr: [Int], _ k: Int) -> [Int] {
    var res = arr
    for i in 0..<res.count {
        for j in 0..<(res.count - 1 - i) {
            if res[j] > res[j + 1] {
                res.swapAt(j, j + 1)
            }
        }
    }
    return Array.init(res[0..<k])
}


//快排
func quickSort(a: inout [Int], low: Int, high: Int) {
    if low >= high { // 递归结束条件
        return
    }
    var i = low
    var j = high
    let key = a[i]
    while i < j {
        // 从右边开始比较，比key大的数位置不变
        while i < j && a[j] >= key {
            j -= 1
        }
        // 只要出现一个比key小的数，将这个数放入左边i的位置
        a[i] = a[j]
        // 从左边开始比较，比key小的数位置不变
        while i < j && a[i] <= key {
            i += 1
        }
        // 只要出现一个比key大的数，将这个数放入右边j的位置
        a[j] = a[i]
    }
    a[i] = key // 将key放入i的位置，则左侧数都比key小，右侧数都比key大
    quickSort(a: &a, low: low, high: i - 1) // 左递归
    quickSort(a: &a, low: i + 1, high: high) // 右递归
}

let arr = [1,3,5,7,2,4,6,8], k = 4

let res = smallestK(arr, k)
print(res)
