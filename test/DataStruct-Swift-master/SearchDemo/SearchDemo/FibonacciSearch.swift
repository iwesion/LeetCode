//
//  FibonacciSearch.swift
//  SearchDemo
//
//  Created by Mr.LuDashi on 16/10/24.
//  Copyright © 2016年 zeluli. All rights reserved.
//
import Foundation
class FibonacciSearch: SearchType {
    var fibonacciSequence: Array<Int> = []
    
    init() {
        self.fibonacciSequence = createFibonacciSequence()
    }
    
    /// 创建Fibonacci数列，F(n) = F(n-1) + F(n-2)，（n >= 2）
    ///
    /// - returns: 返回创建好的Fibonacci数列
    private func createFibonacciSequence() -> Array<Int> {
        var fibonacciSequence = [0, 1];
        for i in 2..<12 {
            fibonacciSequence.append(fibonacciSequence[i-1] + fibonacciSequence[i-2])
        }
        print("Fibonacci数列：\(fibonacciSequence)")
        return fibonacciSequence
    }
    
    
    /// 寻找number在Fibonacci数列中的位置
    ///
    /// - parameter number:
    ///
    /// - returns: 位置索引
    private func findNumberInFibonacci(number: Int) -> Int {
        var index = 0
        while number >= fibonacciSequence[index] {
            index += 1
        }
        return index
    }
    
    
    /// 查找表的元素补齐，便于使用Fibonacci数列进行分割
    ///
    /// - parameter items: 查找表
    /// - parameter key:   补齐后的元素个数
    ///
    /// - returns: 可以进行Fibonacci数列分割的查找表
    private func createFibonacciSearchTable(items: Array<Int>, key: Int) -> Array<Int> {
        var searchItems = items
        for _ in 0..<(fibonacciSequence[key]-items.count) {
            searchItems.append(items.last!)
        }
        return searchItems
    }
    
    func search(items: Array<Int>, item: Int) -> Int {
        //寻找元素的个数在Fibonacci数列中对应区间的位置
        var key = findNumberInFibonacci(number: items.count)
        var searchItems = createFibonacciSearchTable(items: items, key: key)
        
        //查找数据
        var low = 0
        var high = items.count - 1
        while low <= high {
            //
            //前半部分元素的个数为F(key - 1),那么后半部分元素的个数自然就为F(key - 2)
            let mid = low + fibonacciSequence[key - 1] - 1
            if item < searchItems[mid] {
                high = mid - 1
                key = key - 1       //因为查找范围的个数为F(key - 1)，所以更新key的值为key-1
            } else if (item > searchItems[mid]) {
                low = mid + 1
                key = key - 2       //此刻查找范围的元素个数为F(key - 2),更新key的值
            } else {
                if mid < items.count {
                    return mid + 1
                } else {
                    return items.count
                }
            }
        }
        return 0
    }
    
}
