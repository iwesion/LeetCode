//
//  main.swift
//  ZConversion
//
//  Created by wesion on 2021/8/2.
//

import Foundation

func convert(_ s: String, _ numRows: Int) -> String {
    var x = 0
    //是否是累加true累加false相减
    var isAdd:Bool = true
    //定义个长度为numRows的string数组
    var numArr:[String] = Array.init(repeating: "", count: numRows)
    if numRows <= 1 {
        return s
    }
    for item in s {
        numArr[x].append(item)
        if isAdd {
            x += 1
            isAdd = !(x == numRows - 1)
        }else{
            x -= 1
            isAdd = x == 0
        }
    }
    var res = ""
    for item in numArr {
        res += item
    }
    
    return res
}


var s = "AB",numRows = 1

print( convert(s, numRows))
