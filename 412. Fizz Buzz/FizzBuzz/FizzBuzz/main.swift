//
//  main.swift
//  FizzBuzz
//
//  Created by wesion on 2021/10/13.
//

import Foundation

func fizzBuzz(_ n: Int) -> [String] {
    var res:[String] = []
    
    
    for i in 1...n {
        if (i % 3 == 0) && (i % 5 != 0) {
            res.append("Fizz")
        }else if(i % 5 == 0) && (i % 3 != 0) {
            res.append("Buzz")
        }else if(i % 5 == 0) && (i % 3 == 0) {
            res.append("FizzBuzz")
        }else{
            res.append(String(i))
        }
    }
    
    return res
}

let res = fizzBuzz(15)

print(res)
