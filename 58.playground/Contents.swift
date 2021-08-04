//  func lengthOfLastWord(_ s: String) -> Int {
//    var i = 0
//    var vs = s
//    while vs.last == " " {
//        vs.removeLast()
//    }
//    print(vs)
//    for (_,item) in vs.enumerated().reversed() {
//
//        if item != " "{
//            i += 1
//        }else{
//            break
//        }
//    }
//
//    return i
//
//  }
  

      func lengthOfLastWord(_ s: String) -> Int {
          var i = 0
          var j = 0
          for c in s {
              if String(c) == " " {
                  i = 0
              } else {
                  i = i+1
                  j = i
              }
            print("i==\(i)j==\(j)")
          }
          return i != 0 ? i : j
      }

  
  var s = "Helo Worlsdadd  saadd  "
  
  print(lengthOfLastWord(s))
  
//  print(lengthOfLastWord(s))
