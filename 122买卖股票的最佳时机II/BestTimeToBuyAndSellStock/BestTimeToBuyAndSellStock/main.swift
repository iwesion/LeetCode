//
//  main.swift
//  BestTimeToBuyAndSellStock
//
//  Created by wesion on 2021/8/10.
//
//暴力算法---超时
//func maxProfit(_ prices: [Int]) -> Int {
//    var sum = 0
//
//    for (i,item) in prices.enumerated() {
//        for j in i..<prices.count {
//            if item < prices[j] {
//                sum = max(sum, prices[j] - item)
//            }
//        }
//    }
//
//    return sum
//}
func maxProfit(_ prices: [Int]) -> Int {
    
    var sum:Int = 0
    
    for (idx,item) in prices.enumerated() {
        if idx<prices.count - 1 && item < prices[idx+1] {
            sum += prices[idx+1] - item
        }
    }
    return sum
}




let prices = [7,6,4,3,1]
maxProfit(prices)
