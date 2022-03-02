//
//  main.swift
//  MyStack
//
//  Created by wesion on 2022/2/17.
//

import Foundation

class MyStack {
    var que1:[Int] = []
    var que2:[Int] = []
    init() {

    }
    
    func push(_ x: Int) {
        que1.append(x)
    }
    
    func pop() -> Int {
        //1.把que1除最后一位全部给que2，2.那么que1留下的就是要pop出去的，3.然后吧que2的值全部变回que1,que2清空
        for i in 0..<que1.count-1{
            let a = que1.first!
            que1.removeFirst()
            // 1.
            que2.append(a)
        }
        // 2.
        let b = que1.first!
        que1.removeFirst()//变成空数组

        que1 = que2
        que2.removeAll()

        return b
    }
    
    func top() -> Int {
        let a = pop()
        que1.append(a)
        return a
    }
    
    func empty() -> Bool {
        return que1.isEmpty
    }
}

