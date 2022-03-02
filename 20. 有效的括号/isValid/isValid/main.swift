//
//  main.swift
//  isValid
//
//  Created by wesion on 2022/2/17.
//

import Foundation

//func isValid(_ s: String) -> Bool {
//     if s.count%2 != 0  {
//        print(s.count%2)
//        return false
//    }
//    let leftS = s.prefix(s.count/2)
//    var rightS = s.suffix(s.count/2)
//
//    for item in leftS{
//
//        switch item {
//
//        case "{":
//
//            if rightS.last == "}"{
//                rightS.removeLast()
//            }else{
//                return false
//            }
//        case "[":
//            if rightS.last == "]"{
//                rightS.removeLast()
//            }else{
//                return false
//            }
//        case "(":
//
//            if rightS.last == ")"{
//                rightS.removeLast()
//            }else{
//                return false
//            }
//        default: break
//
//        }
//    }
//    return rightS.count == 0
//    }

func isValid(_ s: String) -> Bool {
        var sArr:[Character] = Array(s)

        var stack:[Character] = []

        for item in sArr{
            //当栈为空或者满足左边括号直接进栈
            if stack.isEmpty || item == "{" || item == "(" || item == "["  {
                stack.append(item)
            }else{
                //判断栈顶元素是否能和item配对，不行的话直接退出，可以的话则出栈，配对下一组
                let a = stack.last!
                switch a {
                    case "{":
                        if  item == "}"{
                            stack.popLast()
                        }else{
                            return false
                        }

                    case "(":
                        if item == ")"{
                            stack.popLast()
                        }else{
                            return false
                        }
                    case "[":
                        if item == "]"{
                            stack.popLast()
                        }else{
                            return false
                        }
                default: break
                    
                }

            }
        }

        return stack.isEmpty


    }

    let s = "{[]}"
    print(isValid(s))
