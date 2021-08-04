  func isValid(_ s: String) -> Bool {
    if s.count%2 != 0  {
        print(s.count%2)
        return false
    }
    let leftS = s.prefix(s.count/2)
    var rightS = s.suffix(s.count/2)
 
    for item in leftS{
        
        switch item {
        
        case "{":
            
            if rightS.last == "}"{
                rightS.removeLast()
            }else{
                return false
            }
        case "[":
            if rightS.last == "]"{
                rightS.removeLast()
            }else{
                return false
            }
        case "(":
            
            if rightS.last == ")"{
                rightS.removeLast()
            }else{
                return false
            }
        default: break
            
        }
    }
    return rightS.count == 0
 
  }
  
  print(isValid("([{]})"))
