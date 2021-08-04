  func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if nums.last! < target {
        return nums.count
    }
    if nums.first! > target {
        return 0
    }
    var min = 0
    var max = nums.count - 1
    var mid = (min + max) >> 1
    while min <= max {
        let v = nums[mid]
        if target == v {
            return mid
        }else if target < v{
        max = mid - 1
        }else{
        min = mid + 1
        }
        mid = (min + max) >> 1
        
    }
    return min
    }
  var nums = [1,3,5,6]
  
  
  print(searchInsert(nums,0))
