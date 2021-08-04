func plusOne(_ digits: [Int]) -> [Int] {
    var arr:[Int] = []
    var a = 1
    for (idx,item) in digits.enumerated().reversed() {
        if a>0 {
            if (item + 1)%10 == 0 {
                a = 1
                arr.append(0)
                if idx == 0 {
                    arr.append(1)
                }
            }else{
                arr.append(item+a)
                a = 0
            }
        }else{
            arr.append(item)
        }
    }
    return arr.reversed()
}
var digits = [9,8,7,6,5,4,3,2,1,0]

print(plusOne(digits))
