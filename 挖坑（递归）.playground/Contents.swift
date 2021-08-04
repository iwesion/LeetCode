func rankArr(nums:[Int]) -> [Int]{

return sortArray(array: nums, startIndex: 0, endIndex: nums.count - 1)
}
//MARK:- 递归排序（升序排序）
func sortArray(array:[Int],startIndex:Int,endIndex:Int) -> [Int] {
    var temp = 0
    var arr = array
    let i = startIndex
    var j = endIndex
    //如果结束位置与开始位置相同，即排序完毕
    if i == j {
        return arr
    }
    //以传入的开始位置元素为基准，从后往前比较，只要比基准小就交换位置，一直比较到开始位置
    while i < j {
        if arr[i] < arr[j] {
            j -= 1
        }else {
            temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
        }
    }
    print(arr)
    //令开始位置后移，循环调用自身
    return sortArray(array: arr, startIndex: startIndex+1, endIndex: endIndex)
}
var nums = [4, 7, 6, 5, 3, 1, 8, 2]

print(rankArr(nums: nums))

