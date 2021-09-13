//
//  main.swift
//  FindTheStudentThatWillReplaceTheChalk
//
//  Created by wesion on 2021/9/10.
//

func chalkReplacer(_ chalk: [Int], _ k: Int) -> Int {
    var sum :Int = 0
    for item in chalk {
        sum += item
    }
    var nk = k%sum


    var a = 0
 
    
    while chalk[a] <= nk {
        nk -= chalk[a]
        print(nk)
        if a<chalk.count - 1  {
            a += 1
        }else{
             a=0
        }
       
    }
    
    return a
  }

let chalk = [5,1,5], k = 22

print(chalkReplacer(chalk, k))
