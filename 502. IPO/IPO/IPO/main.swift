//
//  main.swift
//  IPO
//
//  Created by wesion on 2021/9/8.
//

/// 设 力扣（LeetCode）即将开始 IPO 。为了以更高的价格将股票卖给风险投资公司，力扣 希望在 IPO 之前开展一些项目以增加其资本。 由于资源有限，它只能在 IPO 之前完成最多 k 个不同的项目。帮助 力扣 设计完成最多 k 个不同项目后得到最大总资本的方式。
/// - Parameters:
///   - k:  k 个不同的项目
///   - w: 资本为 w
///   - profits: 纯利润 profits[i]
///   - capital: 最小资本 capital[i]
/// - Returns: 最大总资本
func findMaximizedCapital(_ k: Int, _ w: Int, _ profits: [Int], _ capital: [Int]) -> Int {
    var arr:[[ Int]] = Array.init(repeating: [0,0], count: profits.count)
    for i in 0..<profits.count {
        arr[i][0] = capital[i]
        arr[i][1] = profits[i]
    }
    arr.sort { a, b in
        a[0] < b[0]
    }
    
    var queue:[Int] = []
    var curr = 0;
    var nw = w
    
    for _ in 0..<k {
        while curr < profits.count && arr[curr][0] <= nw {
            
            queue.append(arr[curr][1])
            curr += 1
        }
        if queue.count > 0{
            nw += queue.popLast()!
            
        }else{
            break
        }
    }
    
    
    return nw
}


let k = 4, w = 0, profits = [1,2,3], capital = [0,1,1]

let res = findMaximizedCapital(k, w, profits, capital)

print(res)
