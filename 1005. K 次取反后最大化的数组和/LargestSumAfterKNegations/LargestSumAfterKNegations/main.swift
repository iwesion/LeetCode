//
//  main.swift
//  LargestSumAfterKNegations
//
//  Created by wesion on 2021/12/3.
//

import Foundation

func largestSumAfterKNegations(_ nums: [Int], _ k: Int) -> Int {
        var s = nums.sorted()
        var res:Int = 0
        var nK = k

        for i in 0..<s.count{
            // 贪心：如果是负数，而k还有盈余，就把负数反过来
            if s[i] < 0 && nK>0{
                s[i] = -1 * s[i]
                nK -= 1
            }
            res += s[i]
        }
        //如果nk有剩，说明负数已经全部转正，所以如果nk还剩偶数个就自己抵消掉，不用删减，如果nk还剩奇数个就减掉2倍最小正数。
            if nK%2 == 0{
                return res
            }else{
              return res - 2*s.sorted()[0]
            }
        

    }

