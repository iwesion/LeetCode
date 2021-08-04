//'.' 匹配任意单个字符
//'*' 匹配零个或多个前面的那一个元素
func isMatch(_ s: String, _ p: String) -> Bool {
    var arr:[Substring] = []
    arr = p.split(separator: "*")
    
    
    var idx = 0
    
    for (index,item) in s.enumerated() {
        
        for value in arr[idx] {
            if value != "." {
                
            }
        }
        
    }
    
    
    return false
}
let s = "aab" ,p = "a*"

isMatch(s, p)
