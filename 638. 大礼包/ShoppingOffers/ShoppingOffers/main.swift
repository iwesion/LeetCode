//
//  main.swift
//  ShoppingOffers
//
//  Created by wesion on 2021/10/25.
//

import Foundation

func shoppingOffers(_ price: [Int], _ special: [[Int]], _ needs: [Int]) -> Int {
        var dp:[String:Int] = [:]
        
        return shoppingOffersDP(price, special, needs, &dp)
    }

    func shoppingOffersDP(_ price: [Int], _ special: [[Int]], _ needs: [Int], _ dp: inout [String:Int]) -> Int {
        let key = getArrayKey(needs)
        if dp[key] != nil {
            return dp[key]!
        }
        
        // 1: 假如全部单独购买
        var value = 0
        for i in 0..<price.count {
            value += price[i] * needs[i]
        }
        dp[key] = value
        
        // 2: 我选择礼包（包括：全部是礼包、礼包+单独）
        // 挨个购买每一个礼包，看看哪个花费最小
        for i in 0..<special.count {
            var tempNeeds = needs       // 每次复制一份，为了尝试的购买每一份礼包
            
            // 校验该礼包是否可以购买
            var isNeed = true
            for j in 0..<special[i].count-1 {
                if tempNeeds[j] - special[i][j] < 0  {  // 说明：礼包里面该物品 大于 需要购买的数量，不符合
                    isNeed = false
                    break
                }
                tempNeeds[j] -= special[i][j] // 需要购买的数量 - 礼包中该物品的数量
            }
            
            if isNeed == true {     // 说明礼包符合条件
                dp[key] = min(dp[key]!, special[i].last! + shoppingOffersDP(price, special, tempNeeds, &dp))
            }
        }
        return dp[key]!
    }
    
    func getArrayKey(_ array:[Int]) -> String {
        var key = ""
        for i in 0..<array.count {
            key += String(array[i]) + ","
        }
        return key
    }





let price = [0,0,0], special = [[1,1,0,4],[2,2,1,9]], needs = [1,1,1]

print(shoppingOffers(price, special, needs))
