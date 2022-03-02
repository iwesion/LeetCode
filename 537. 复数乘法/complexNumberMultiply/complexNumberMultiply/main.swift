//
//  main.swift
//  complexNumberMultiply
//
//  Created by wesion on 2022/2/25.
//

import Foundation

func complexNumberMultiply(_ num1: String, _ num2: String) -> String {
    let num1Arr = num1.components(separatedBy:"+")
    let num2Arr = num2.components(separatedBy:"+")
    
    let a = Int(num1Arr[0])!
    let b = Int(num1Arr[1].dropLast(1))!
    let c = Int(num2Arr[0])!
    let d = Int(num2Arr[1].dropLast(1))!
    var res :String = ""
    
    res = String(a * c - b * d) + String(a * d + c * b) + "i"
    print(res)
    return res
}

let num1 = "1+1i", num2 = "1+1i"

let res = complexNumberMultiply(num1, num2)
print(res)
