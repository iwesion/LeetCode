func addBinary(_ a: String, _ b: String) -> String {
    var idx = 1
    var carry = "0"
    var c = ""
    
    while idx <= max(a.count, b.count) {
        
        let aa = idx > a.count ? "0" : a[a.index(a.startIndex, offsetBy: a.count - idx )]
        let bb = idx > b.count ? "0" : b[b.index(b.startIndex, offsetBy: b.count - idx)]
        if max(a.count, b.count) <= 1 && aa == bb && aa == "0" {
            return "0"
        }
        
        
        if aa == bb   {
            c.append(carry)
            carry = String(aa)//aa=0则不进位，为1是则进位
            if idx == max(a.count, b.count) {
                c.append(carry)
            }
        }else{
            carry == "1" ? "1" : "0"
            c.append(carry == "1" ? "0" : "1")
            if idx == max(a.count, b.count) {
                if carry == "1" {
                    c.append(carry)
                }
            }
        }
        idx += 1
    }
    return String(c.reversed())
}

var a = "100"
var b = "110010"
print(addBinary(a, b))


