//
//  main.swift
//  TextJustification
//
//  Created by wesion on 2021/9/9.
//


/// 文本左右对齐
/// - Parameters:
///   - words: 单词数组
///   - maxWidth: 每行恰好有 maxWidth 个字符
/// - Returns: 左右两端对齐的文本
func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
    
    var res:[[String]] = Array.init(repeating: [], count: words.count)
    //第几行
    var a = 0
    //没每行的长度s
    var s :Int = 0
    //遍历数组，计算第a行可以放下小于maxWidth的单词
    for i in 0..<words.count {
        res[a].append(words[i])
        s +=  words[i].count + 1
        if i+1 < words.count && s + words[i+1].count > maxWidth {
            //如果第a行不够放的话，则放下一行
            a += 1
            s = 0
        }
    }
    res =  res.filter { a in
        a.count>0
    }
    
    var ress:[String] = Array.init(repeating: "", count: res.count)
    
    for i in 0..<res.count {
        ress[i] =  calking(res[i], maxWidth, i == res.count-1)
    }
    
    
    return ress
}

func calking(_ arr:[String],_ maxWidth: Int,_ isEnd:Bool) -> String {
    var arr = arr
    
    var res:String = ""
    
    var arrWordsLength:Int = 0
    
    for item in arr {
        arrWordsLength += item.count
    }
    var blank = (maxWidth - arrWordsLength)
    
    
    if isEnd {
        for item in arr {
            res.append(item)
            if res.count  < maxWidth {
                res.append(" ")
            }
            
        }
        while res.count < maxWidth {
            res.append(" ")
        }
        return res
    }
    
    if arr.count == 1 {
        res.append(arr[0])
        for _ in 0..<blank {
            res.append(" ")
        }
    }
    if arr.count == 2 {
        res.append(arr[0])
        for _ in 0..<blank {
            res.append(" ")
        }
        res.append(arr[1])
    }
    if arr.count > 2 {
        while blank > 0  {
            for i in 0..<arr.count-1 {
                arr[i].append(" ")
                blank -= 1
                if blank == 0 {
                    break
                }
            }
        }
        for item in arr {
            res.append(item)
        }
        
    }
    
    
    return res
}
let words = ["ask","not","what","your","country","can","do","for","you","ask","what","you","can","do","for","your","country"],maxWidth = 16
//[
//   "This    is    an",
//   "example  of text",
//   "justification.  "
//]
print(fullJustify(words, maxWidth))
["ask   not   what",
 "your country can",
 "do  for  you ask",
 "what  you can do",
 "for your country"]
