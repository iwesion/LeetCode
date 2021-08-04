func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {


    if nums1.count < 1 {
        if nums2.count < 1 {
            return Double(0)
        }else if nums2.count < 2 {
            return Double(nums2.first!)
        }else{
            if nums2.count%2 == 0 {
              return  Double( nums2[nums2.count >> 1 - 1] + nums2[nums2.count >> 1 ])/2.0
            }else{
                return  Double( nums2[nums2.count >> 1])
            }
        }

    }
    if nums2.count < 1 {
        if nums1.count < 1 {
            return Double(0)
        }else if nums1.count < 2 {
            return Double(nums1.first!)
        }else{
            if nums1.count%2 == 0 {
              return  Double( nums1[nums1.count >> 1 - 1] + nums1[nums1.count >> 1 ])/2.0
            }else{
                return  Double( nums1[nums1.count >> 1])
            }
        }

    }



    var  arr : [Int] = []
    var num1tag = 0
    var num2tag = 0


    while arr.count < ( (nums1.count+nums2.count) >> 1 + 1){
        print("arr = \(arr)")

        if arr.count < 1 {
            if nums1[num1tag] <= nums2[num2tag] {
                arr.append(nums1[num1tag])
                if num1tag < nums1.count {
                    num1tag += 1
                }
            }else{
                arr.append(nums2[num2tag])
                if num2tag < nums2.count {
                    num2tag += 1
                }
            }

        }else{

            if num1tag == nums1.count {

                if num2tag < nums2.count {

                    arr.append(nums2[num2tag])
                    num2tag += 1

                }
                break
            }
            if num2tag == nums2.count {
                if num1tag < nums1.count {

                    arr.append(nums1[num1tag])
                    num1tag += 1

                }
                break
            }


            if nums1[num1tag] < nums2[num2tag] {
                arr.append(nums1[num1tag])
                if num1tag < nums1.count {
                    num1tag += 1
                }
            }else if nums1[num1tag] > nums2[num2tag]{
                arr.append(nums2[num2tag])
                if num2tag < nums2.count {
                    num2tag += 1
                }
            }else{
                arr.append(nums1[num1tag])
                arr.append(nums2[num2tag])
                if num2tag < nums2.count {
                    num2tag += 1
                }
                if num1tag < nums1.count {
                    num1tag += 1
                }

            }



        }

    }

    print(arr)
    if (nums1.count + nums2.count) % 2 != 0 {
        return Double(arr.last!)
    }else{
        return Double((arr[arr.count - 1] + arr[arr.count - 2])) / 2.0
    }
}








var nums1:[Int] = [1], nums2:[Int] = [2,3,4]

findMedianSortedArrays(nums1, nums2)




