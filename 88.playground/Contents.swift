func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {

    for (idx,item) in nums1.enumerated() {
        if idx >= m {
            nums1[idx] = nums2[idx - m]
        }
    }
    nums1 = nums1.sorted()
  print(nums1)
    
}

var nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3

merge(&nums1, m, nums2, 3)
