 func rob(_ nums: [Int]) -> Int {
    if nums.count < 1 {
        return 0
    }
    
    if nums.count == 1 {
        return nums[0]
    }
    if nums.count == 2 {
        return max(nums[0], nums[1])
    }
    var arr:[Int] = Array(repeating: 0, count: nums.count + 1 )
    arr[0] = nums[0]
    arr[1] = max(nums[0], nums[1])
    
    
    var i = 2
    while i < nums.count  {
        //选择i的时候把i-2之前的总和+nums[i]相加和[i-1]前民的总和做对比
        arr[i] =  max(arr[i - 2] + nums[i], arr[i-1])
        i += 1
    }
    return arr[nums.count - 1]
 }
 
 var nums = [1,2,3,1]
 
 var a = rob(nums)
 
 
 
