//
//  main.swift
//  RectangleArea
//
//  Created by wesion on 2021/9/30.
//

import Foundation

func computeArea(_ ax1: Int, _ ay1: Int, _ ax2: Int, _ ay2: Int, _ bx1: Int, _ by1: Int, _ bx2: Int, _ by2: Int) -> Int {
    //x轴（a的最大和最小b的最大最小）
    let axmax = max(ax1, ax2)
    let axmin = min(ax1, ax2)
    let bxmax = max(bx1, bx2)
    let bxmin = min(bx1, bx2)
    //y轴
    let aymax = max(ay1, ay2)
    let aymin = min(ay1, ay2)
    let bymax = max(by1, by2)
    let bymin = min(by1, by2)
    
    let twoBox = area(ax1, ay1, ax2, ay2) + area(bx1, by1, bx2, by2)
    
    let ab:Bool = (bxmin > axmax)||(axmin > bxmax)
    let bb:Bool = (bymin > aymax)||(aymin > bymax)
    
    //x上无交集、y上有无交集（2者都满足的时候就是有共同区块）
    if ((bxmin > axmax)||(axmin > bxmax))||((bymin > aymax)||(aymin > bymax)) {
        print("无交集")
        return twoBox
        
    }else{
        print("有交集")
  
        let x = max(axmin, bxmin) - min(axmax, bxmax)
        
        let y = max(aymin, bymin) - min(aymax, bymax)
        
        
        return twoBox - x*y
    }
    
   }
func area(_ x1 : Int,_ y1 : Int,_ x2 : Int,_ y2 : Int) -> Int {
    var awith = 0
    var aheight = 0
    awith = x1 > x2 ? (x1 - x2) : (x2 - x1)
    aheight = y1 > y2 ? (y1 - y2): (y2 - y1)
    return awith*aheight
}


//let ax1 = -2, ay1 = -2, ax2 = 2, ay2 = 2, bx1 = -1, by1 = 4, bx2 = 1, by2 = 6

let ax1 = -2, ay1 = -2, ax2 = 2, ay2 = 2, bx1 = -2, by1 = -2, bx2 = 2, by2 = 2

let a =   computeArea(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)
print(a)
