func findRightInterval(_ intervals: [[Int]]) -> [Int] {
    //start:Index
    var temp:[Int:Int] = [:]
    var res:[Int] = []
    for i in 0..<intervals.count{
        //因为每个 starti 都 不同
        temp[intervals[i][0]] = i
    }
    var t = temp.keys.sorted()
    for i in 0..<intervals.count{
        let endi = intervals[i].last!
        let a = search(endi,t,temp)
        res.append(a)
        
    }
    
    return res
}
func search(_ n:Int , _ arr:[Int] , _ temp:[Int:Int]) -> Int{
    var res : Int = -1
    
    if n > arr.last!{
        return res
    }
    var l:Int = 0, r = arr.count - 1
    
    while l < r{
        let mid = (l + r) >> 1
        if arr[mid] < n{
            l = mid + 1
        }else{
            r = mid
        }
    }
    res = temp[arr[r]]!
    return res
}
