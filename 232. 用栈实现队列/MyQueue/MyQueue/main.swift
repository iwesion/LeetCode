//
//  main.swift
//  MyQueue
//
//  Created by wesion on 2022/2/17.
//

import Foundation

class MyQueue {
    var stIn:[Int] = []
    var stOut:[Int] = []
    init() {

    }
    
    func push(_ x: Int) {
        stIn.append(x)
    }
    
    func pop() -> Int {
//        -------       --------
//        |1，2，3  ->  |3,2,1
//        -------       --------
    
        if stOut.isEmpty{
           while !stIn.isEmpty{
                let a = stIn.popLast()!
                stOut.append(a)
           }
        }
        let b = stOut.popLast()!
        return b
    }
    
    func peek() -> Int {
         let a = pop()
         stOut.append(a)
        return a
    }
    
    func empty() -> Bool {
        return stIn.isEmpty&&stOut.isEmpty
    }
}
var res = MyQueue.init()
res.push(1)
res.push(2)
print(res.peek())
print(res.pop())
print(res)
