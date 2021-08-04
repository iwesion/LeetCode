func longestPalindrome(_ s: String) -> String {
    let arr = Array(s)
    
    var xs = ""
    
    
    if arr.count == 1 {
        return s
    }
    
    if arr.count == 2 {
        if arr[0] == arr[1] {
            return s
        }else{
            return String(arr[0])
        }
    }
    
    //单指针
    var i = 0
    while i < arr.count  {
        var n = 0
        while i + n < arr.count && i-n >= 0 {
            if arr[i - n] == arr [i + n] {
                let ss =  arr[(i-n)...(i+n)]
                xs = String(ss).count > xs.count ? String(ss) : xs
            }else{
                break
            }
            n += 1
        }
        
        i += 1
    }
    
    
    //双位
    var j = 0
    while j < arr.count - 1 {
        var n = 0
        while  j + 1 + n < arr.count && j - n >= 0 {
            if arr[j-n] == arr[j+1+n] {
                let ss =  arr[(j-n)...(j+1+n)]
                xs = String(ss).count > xs.count ? String(ss) : xs
                n += 1
            }else{
                break
            }
            
        }
        j += 1
        
        
    }
    
    return xs
    
    
}

var s = "tattarrattat"


longestPalindrome(s)

