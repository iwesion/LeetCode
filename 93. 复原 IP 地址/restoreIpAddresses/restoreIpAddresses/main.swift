//
//  main.swift
//  restoreIpAddresses
//
//  Created by wesion on 2022/2/9.
//

import Foundation

class Solution {
    var res:[String] = []
    var path:[String] = []
    
    func restoreIpAddresses(_ s: String) -> [String] {
        backtrack(s, 0 , 0)
        return res
    }
    
    /// 回溯
    /// - Parameters:
    ///   - s: 字符串s
    ///   - idx:
    ///   - point: 地址的“.”
    func backtrack(_ s: String , _ idx:Int, _ point :Int ){
        let arrS = Array(s)
        //满足条件为3个小数点&&idx等于s的长度（全部数被取完）
        if point == 4 && idx == s.count{
            res.append(path.joined(separator: "."))
            return
        }
        
        for i in idx..<s.count{
            //当地址1位真确再进行下一位判断
            if isAddress(String(arrS[idx...i])) {
                path.append(String(arrS[idx...i]))
                backtrack(s, i+1,point+1)
                path.removeLast()
            }else{
                continue
            }
        }
        
        
    }
    //检测地址是否真确
    func isAddress(_ s : String) -> Bool{
        let arr = Array(s)
        if arr.count>1 && arr.first == "0" {
            return false
        }
        let i:Int = Int(s) ?? -1
        if i<=255 && i>=0 {
            return true
        }
        return false
        
    }
    
    
    
}

let s = "25525511135"

let ss = Solution.init().restoreIpAddresses(s)

print(ss)

