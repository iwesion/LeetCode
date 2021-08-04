 func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    
    var left = 0
    var right = 1
    while right < nums.count {
        if nums[left] != nums[right] {
            left += 1
            nums[left] = nums[right]
        }
        
        right += 1
    }
    
    print(nums)
    return left + 1
    
 }
 var a = [1,1,2,3,4,4,4,5,6,6,7]
 
 removeDuplicates(&a)
