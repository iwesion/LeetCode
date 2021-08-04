 func strStr(_ haystack: String, _ needle: String) -> Int {
    
    if needle.count == 0 {
        return 0
    }
    
    
    for (idx,_) in haystack.enumerated() {
        var flag = true
        if idx + needle.count <= haystack.count {
            for (ineedleIdx,needleItem) in needle.enumerated() {
                if haystack[haystack.index(haystack.startIndex, offsetBy: idx+ineedleIdx)] != needleItem {
                    flag = false
                    break
                }
            }
        }else{
            flag = false
        }
        if flag {
            return idx
        }
    }
    return -1
    
    
    
    
 }
 var haystack = "asdaf"

 var needle = ""
 print(strStr(haystack,needle))
