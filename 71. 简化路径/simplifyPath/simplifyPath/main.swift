//
//  main.swift
//  simplifyPath
//
//  Created by wesion on 2022/1/6.
//

import Foundation

func simplifyPath(_ path: String) -> String {
    var pathArr:[String] = path.components(separatedBy:"/")
    var stackArr:[String] = []
    for item in pathArr{
        if item != ""{
            if item != ".." && item != "." && item != "_"{
                stackArr.append(item)
            }else if item == ".."{
                stackArr.popLast()
            }
        }
    }
    var res :[String] = []
    for item in stackArr{
        res.append("/\(item)")
    }
    return String(res)
}

