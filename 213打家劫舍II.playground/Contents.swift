func rob(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    if nums.count == 1 {
        return nums[0]
    }
    if nums.count == 2 {
        return max(nums[0], nums[1])
    }
    var newNums = nums
    var arr = Array(repeating: 0, count: nums.count * 2)
    arr[0] = nums[0]
    arr[1] = max(nums[0], nums[1])
    var i = 2
    while i < nums.count {
        
        if arr[i-2]+nums[i] > arr[i-1] {
            arr[i] = arr[i-2]+nums[i]
            newNums[i-2] = 0
        }else{
            arr[i] = arr[i - 1]
            newNums[i-1] = 0
        }
        
        i += 1
    }
    print(newNums)
//    while i  - nums.count < newNums.count {
//
//        arr[i] = max(arr[i-2]+newNums[i], arr[i-1])
//        i += 1
//    }
//
//    print(arr[nums.count-1])
//    
    return arr[nums.count-1]
}
var nums = [1,2,2,4]

var a = rob(nums)

