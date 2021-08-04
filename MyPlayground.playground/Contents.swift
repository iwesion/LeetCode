
func longestCommonPrefix(_ strs: [String]) -> String {
    var sum = ""
    let newStrs = strs.sorted()

    if newStrs.count>0 {
        let firstS = newStrs.first!
        let lastS = newStrs.last!
        
        for (index,item) in firstS.enumerated() {
            if item == lastS[lastS.index(lastS.startIndex, offsetBy: index)] {
                sum.append(item)
            }else{
                return sum
            }
        }
    }else{
        return ""
        
    }
    return sum
    
}


print( longestCommonPrefix(["a"]))

