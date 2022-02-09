// func lengthOfLongestSubstring(_ s: String) -> Int {
//
//    let arrs = Array(s)
//
//    var a = 0
//    var maxs = 0
//    //暂存数组
//    var savearr:[Character] = []
//
//
//    while a < s.count {
//        var b = 1
//
//
//        savearr.removeAll()
//        savearr .append(arrs[a])
//        while b + a < s.count {
//
//
//            for (index,item) in savearr.enumerated() {
//                if item == arrs[a+b] {
//                    a = a + index
//                    break
//                }else{
//                    savearr.append(arrs[a+b])
//                }
//            }
//
//
//            b += 1
//        }
//        print(savearr)
//        maxs = max(maxs, savearr.count)
//
//    }
//
//    return maxs
// }



//func lengthOfLongestSubstring(_ s: String) -> Int {
//    var dic = [Character : Int]()  // 字典，通过key 保存数组end
//    var start = 0   // 起点Index
//    var count = 0   // 最大数量
//    for (index,item) in s.enumerated() {
//        //出现item
//        let oldIndex = dic[item] ?? -1
//        if start <= oldIndex {
//            start = oldIndex + 1
//        }
//        dic[item] = index
//
//        print(dic)
//        count = max(count, index - start + 1)
//
//
//    }
//    return count
//}
func lengthOfLongestSubstring(_ s: String) -> Int {
    var dic = [Character : Int]()  // 字典，通过key 保存数组所在的位置
    let sArr = Array(s)
    var res:Int = 0
    
    for i in 0..<sArr.count{
        
        if dic[sArr[i]] == nil{
            dic[sArr[i]] = i
        }else{
            res = max(res, i - dic[sArr[i]]!)
            dic[sArr[i]]! = i
        }
    }
    return res
    
}
var s = " "

lengthOfLongestSubstring(s)
