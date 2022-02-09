//
//  main.swift
//  PoorPigs
//
//  Created by wesion on 2021/11/25.
//

import Foundation

func poorPigs(_ buckets: Int, _ minutesToDie: Int, _ minutesToTest: Int) -> Int {
    let states = minutesToTest / minutesToDie + 1;
    return Int(ceil(log(Double(buckets)) / log(Double(states))));
}
