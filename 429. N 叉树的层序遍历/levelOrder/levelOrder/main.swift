//
//  main.swift
//  levelOrder
//
//  Created by wesion on 2022/2/11.
//
public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}
import Foundation

class Solution {
    var res:[[Int]] = []
    func levelOrder(_ root: Node?) -> [[Int]] {
        dfs(root,0)
        return res
    }
    func dfs(_ root: Node?,_ deep:Int){
        guard let root = root else {
            return
        }
        if res.count<1{
            res.append([root.val])
        }else{
            if res.count  > deep {
              if res[deep].count>0{
                  res[deep].append(root.val)
              }else{
                   res.append([root.val])
              }
            }else{
                 res.append([root.val])
            }
            
        }
        let deepp = deep+1
        for i in 0..<root.children.count{
            dfs(root.children[i],deepp)
        }
        
        
    }
}

let root:Node = .init(2)

