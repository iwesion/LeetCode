//
//  main.swift
//  FindLongestWord
//
//  Created by wesion on 2021/9/14.
//

import Foundation

func findLongestWord(_ s: String, _ dictionary: [String]) -> String {
    var res:String = ""
      let sArr = Array(s)
      let dicArray = Array(dictionary)
      
      for item in dicArray {
          
          let itemArr = Array(item)
          //i指向dictionary，j指向s
          var i = 0,j=0
          while i<itemArr.count && j<sArr.count {
              if itemArr[i] == sArr[j] {
                  i += 1
              }
              j += 1
          }
          
          if i == itemArr.count   {
              
              if res.count < itemArr.count || (res.count == itemArr.count && item<res)  {
                  res = item
                  
              }
              
          }
          
          
      }
      
      return res
}
let s = "bab", dictionary = ["ba","ab","a","b"]


print(findLongestWord(s, dictionary))
