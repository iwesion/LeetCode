   func maxSubArray(_ nums: [Int]) -> Int {
    
    if nums.count == 1 {
        return nums.first!
    }
    
    var mx = nums[0]
    var sum = 0
    for (_,item) in nums.enumerated() {
        sum = max(sum + item, item)
        if sum >= mx {
            mx = sum
        }
        print("sum==\(sum),mx== \(item),")
    }
    return mx

    }
   
   var nums = [-2,1,-3,4,-1,2,1,-5,4]
   print(maxSubArray(nums))
   
