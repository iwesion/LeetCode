//
//  main.swift
//  LetterCombinationsPhoneNumber
//
//  Created by wesion on 2021/7/22.
//

import Foundation



//var listRes = [String]()
//
//let map : [Character:[Character]] = {
//
//    return ["2":Array("abc"),
//            "3":Array("def"),
//            "4":Array("ghi"),
//            "5":Array("jkl"),
//            "6":Array("mno"),
//            "7":Array("pqrs"),
//            "8":Array("tuv"),
//            "9":Array("wxyz")
//    ]
//}()
//
//func letterCombinations(_ digits: String) -> [String] {
//    if digits.count == 0 {
//        return []
//    }
//    search("", Array(digits), 0)
//    return listRes
//
//}
//func search(_ s:String,_ digits: [Character],_ index:Int) {
//    //! 1.terminator
//    if index==digits.count {
//        listRes.append(s)
//        return
//    }
//
//    //! 2. process
//    let letters = map[digits[index]]!
//    //! 与当前号码的字母分别进行组合
//    for j in 0..<letters.count {
//        //! drill down
//        search(s+String(letters[j]), digits, index+1)
//    }
//}




var s :[Character:[Character]] = ["2":Array("abc"),
                                  "3":Array("def"),
                                  "4":Array("ghi"),
                                  "5":Array("jkl"),
                                  "6":Array("mno"),
                                  "7":Array("pqrs"),
                                  "8":Array("tuv"),
                                  "9":Array("wxyz")
]
var listRes = [String]()
var saveS:[Character] = []
func letterCombinations(_ digits: String) -> [String] {
    let digitsArr = Array(digits)
    
    search(digitsArr, 0, "")
    
    return listRes
}

func search(_ arr:[Character] , _ startIdx:Int , _ str:String){
    if startIdx == arr.count {
        listRes.append(str)
        return
    }
    let letters = s[arr[startIdx]]!
    for i in 0..<letters.count {
        search(arr, startIdx+1, str+String(letters[i]))
    }
    
    
    
}



let digits = "23"

print( letterCombinations(digits))

