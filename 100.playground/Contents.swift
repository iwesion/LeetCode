 public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
 }
 func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    
    var bool:Bool = false
    
    bool = p?.val == q?.val
    if bool {
        if isSameTree(p?.left, q?.left) {
            isSameTree(p?.right, q?.right)
        }
    }
    print(bool)
    return bool
 }
 
 var p = TreeNode.init(1, .init(2), .init(1))
 var q = TreeNode.init(1, .init(1), .init(2))
 
isSameTree(p, q)
 
 
 
