//
//  main.swift
//  removeDuplicates
//
//  Created by wesion on 2022/2/17.
//

import Foundation

func removeDuplicates(_ s: String) -> String {
    var stack:[Character] = []
    let sArr:[Character] = Array(s)
    for item in sArr{
        if stack.isEmpty || stack.last! != item{
            stack.append(item)
        }else{
            stack.popLast()
        }
    }
    return String(stack)
}

