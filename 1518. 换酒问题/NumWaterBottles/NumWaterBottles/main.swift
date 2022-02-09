//
//  main.swift
//  NumWaterBottles
//
//  Created by wesion on 2021/12/17.
//

import Foundation

func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
    var numBottles = numBottles,numExchange = numExchange
    
    var res:Int = numBottles
    while numBottles >= numExchange{
        var a = numBottles/numExchange
        var b = numBottles%numExchange
        res += a
        numBottles = a + b
        
    }
    return res
}


let numBottles = 9, numExchange = 3
let ss =  numWaterBottles(numBottles, numExchange)
print(ss)
