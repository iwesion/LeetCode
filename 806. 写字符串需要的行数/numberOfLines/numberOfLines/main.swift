//
//  main.swift
//  numberOfLines
//
//  Created by wesion on 2022/4/12.
//

import Foundation

func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {

        var temp:[Character] = Array(s)
        var s:Int = 0
        var res:[Int] = [0,0]
        for i in temp{
            let a = Int(i.asciiValue!) - Int(Character("a").asciiValue!)
            if s + widths[a] > 100{
                res[0] += 1
                s = widths[a]
            }else if s + widths[a] == 100{
                res[0] += 1
                s = 0
            }  else{
                s += widths[a]
            }
            
        }
       res[1] = s
        return res
        
    }
let widths = [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],S = "abcdefghijklmnopqrstuvwxyz"

print(numberOfLines(widths, S))
