//
//  main.swift
//  MinStack
//
//  Created by wesion on 2022/2/8.
//

import Foundation

class MinStack {
    var stack:[Int]
    var minStack:[Int]
    init() {
        stack = []
        minStack = []
    }
    
    func push(_ val: Int) {
        stack.append(val)
        if minStack.count == 0 || minStack.last! > val{
            minStack.append(val)
        }else{
            var s = minStack.last!
            minStack.append(s)
        }
    }
    
    func pop() {
        stack.popLast()
        minStack.popLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
         return minStack.last!
    }
}
