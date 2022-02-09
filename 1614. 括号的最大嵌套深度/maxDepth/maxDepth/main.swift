//
//  main.swift
//  maxDepth
//
//  Created by wesion on 2022/1/7.
//

import Foundation
func maxDepth(_ s: String) -> Int {
       let sArr:[Character] = Array(s)
       var res:[Character] = []
       var i:Int = 0
       for item in sArr{
           if item == "("{
               res.append(item)
               i = max(i,res.count)
           }else if item == ")"{
               res.popLast()
           }
       }
       return i
   }

let s = "(1+(2*3)+((8)/4))+1"
maxDepth(s)
