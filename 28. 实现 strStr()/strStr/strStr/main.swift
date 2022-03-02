//
//  main.swift
//  strStr
//
//  Created by wesion on 2022/2/16.
//

import Foundation
//直接截取数组对比
//func strStr(_ haystack: String, _ needle: String) -> Int {
//    let hArr:[Character] = Array(haystack)
//    let needleArr:[Character] = Array(needle)
//
//    if needleArr.count == 0 {
//        return 0
//    }
//    if needleArr.count > hArr.count {
//        return -1
//    }
//    for i in 0...hArr.count - needleArr.count {
//        if Array(hArr[i..<i+needleArr.count]) == needleArr{
//            return i
//        }
//    }
//
//    return -1
//}


//朴素解法
//func strStr(_ haystack: String, _ needle: String) -> Int {
//    let hArr:[Character] = Array(haystack)
//    let needleArr:[Character] = Array(needle)
//
//    for i in 0..<hArr.count - needleArr.count{
//        var icnt = i,m = 0
//        while m < needleArr.count &&  hArr[icnt] == needleArr[m] {
//
//                icnt += 1
//                m += 1
//        }
//        if m == needleArr.count {
//            return i
//        }
//    }
//    return -1
//
//}


//KMP
//func strStr(_ haystack: String, _ needle: String) -> Int {
//    let s = [Character](haystack), p = [Character](needle)
//    if p.count == 0 {
//        return 0
//    }
//    if s.count < p.count {
//        return -1
//    }
//
//    // 下面开始KMP
//    var n = [Int](repeating:0, count:p.count)// 1. next数组的长度肯定和模式串P长度相同。
//    var j = 0 // 3. j, 共同前缀的长度
//    for i in 1 ..< p.count {// 2. 根据KMP定义， 公共前缀不包括第0位，所以从1开始
//        while j > 0 && p[j] != p[i] {
//            j = n[j-1]// 5. 发现不同，在next数组的前一个位置找相同，找到为止。 最差就是0呗
//        }
//        if p[i] == p[j] {// 4.字母相同， 共同前缀的长度+1， 没毛病。
//            j += 1
//        }
//        n[i] = j // 6.设置前缀长度
//    }
//
//    j = 0 // 8. 弄个 j, 表示 P 到第几位了
//    for i in 0 ..< s.count { // 7. 开始遍历了
//        while j > 0 && s[i] != p[j] {
//            j = n[j-1]  // １０. 不同，就问next数组的前一个　【相同的位置】 j 在哪
//        }
//        if s[i] == p[j] {
//            j += 1 // 9. 相同咱就往前走
//        }
//        if j == p.count {
//            return i - p.count + 1 // 11. j 走到尾, 就是找到了。
//        }
//    }
//    return -1
//}
//let haystack = "aabaab", needle = "abeabf"
//
//let res =  strStr(haystack, needle)
//print(res)




func getnext(_ t:String){
    var tArr = Array(t)
    var nxt:[Int] = Array(repeating:0,count: tArr.count)
    nxt[0] = -1
    var j = 0,k = -1
    while j<tArr.count-1{
        print(j,k)
        if k == -1 || tArr[j] == tArr[k] {
            //            print("===\(tArr[j])")
            j += 1
            k += 1
            if nxt[j] == nxt[k]{//当2个字符相同直接跳过
                nxt[j] = nxt[k]
            }else{
                nxt[j] = k
            }
        }else{
            print("k=\(k),nxt[k]= \(nxt[k])")
            k = nxt[k]
            
        }
        
    }
}

getnext("abababca")

