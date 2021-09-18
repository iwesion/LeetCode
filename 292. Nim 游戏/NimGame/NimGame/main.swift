//
//  main.swift
//  NimGame
//
//  Created by wesion on 2021/9/18.
//

import Foundation

func canWinNim(_ n: Int) -> Bool {
    return ((n%4) != 0)
}

let n = 5

let res = canWinNim(n)
print(res)



