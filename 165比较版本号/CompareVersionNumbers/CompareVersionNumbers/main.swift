//
//  main.swift
//  CompareVersionNumbers
//
//  Created by wesion on 2021/9/1.
//

func compareVersion(_ version1: String, _ version2: String) -> Int {
    let v1 = version1.split(separator: ".")
    let v2 = version2.split(separator: ".")
    
    let minlength = min(v1.count, v2.count)
    
    for i in 0..<minlength {
        
        if Int(v1[i])! > Int(v2[i])!  {
            return 1
        }
        if Int(v1[i])! < Int(v2[i])!{
            return -1
        }
    }
    
    if v1.count > v2.count {
        for i in minlength..<v1.count {
            if Int(v1[i])! > 0 {
                return 1
            }
        }
    }else{
        for i in minlength..<v2.count {
            if Int(v2[i])! > 0 {
                return -1
            }
        }
    }

    return 0
   }
let version1 = "7.5.2.4", version2 = "7.5.3"

let res = compareVersion(version1, version2)

print(res)
