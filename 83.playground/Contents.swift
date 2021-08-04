 
 public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    //
    var xHead = head
    //

    
    
    while xHead?.next != nil {
        
        if xHead?.val == xHead?.next?.val {
            xHead?.next = xHead?.next?.next
        }else{
        
            xHead = xHead?.next
        }
        
    }

    
    
    return head
    
  
 }
 
 var head:ListNode = .init(1, .init(1, .init(3,.init(3))))
 
 print(deleteDuplicates(head) ?? ListNode.init())
 
