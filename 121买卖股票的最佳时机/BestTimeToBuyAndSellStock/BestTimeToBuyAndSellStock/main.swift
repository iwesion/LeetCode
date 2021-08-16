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
    
    var minPrice:Int = prices[0]
    var sum:Int = 0
    
    for item in prices {
        if item < minPrice {
            minPrice = item
        }else{
            if item - minPrice > sum {
                sum = item - minPrice
            }
        }
    }
    return sum
}




let prices = [7,1,5,3,6,4]
maxProfit(prices)
