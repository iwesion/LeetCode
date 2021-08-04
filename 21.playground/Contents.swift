public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        
        var firstNode = l1
        var secondNode = l2
        let resultNode:ListNode? = ListNode.init(0)
        resultNode?.next = firstNode
        var preNode = resultNode
        
        while firstNode != nil && secondNode != nil {
            if firstNode!.val > secondNode!.val {
                let tmpNode = secondNode
                secondNode = secondNode?.next
                tmpNode?.next = firstNode
                preNode?.next = tmpNode
                preNode = preNode?.next
            } else {
                firstNode = firstNode?.next
                preNode = preNode?.next
            }
        }
        
        if secondNode != nil {
            preNode?.next = secondNode
        }
        
        return resultNode?.next
  


       
}
let a = ListNode(1, .init(2, .init(4, .init(8, .init( 8, .init( 9))))))
let b = ListNode(1, .init(3, .init(1, .init(5, .init( 3, .init( 6))))))



 print(mergeTwoLists(a, b))




