//
//  main.swift
//  944. 删列造序 minDeletionSize
//
//  Created by wesion on 2022/5/12.
//

import Foundation

func minDeletionSize(_ strs: [String]) -> Int {
      var res:Int = 0
      for i in 1..<strs.count{
          for j in 0..<strs[0].count{
              let a = Array(strs[j])[i]
              let b = Array(strs[j])[i-1]
              if  Int(a.asciiValue!) - Int(b.asciiValue!) < 0{
                  res += 1
                  break;
              }
          }
      }
      return res

  }


