
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
class BinaryTree {
    ///二叉树的前序遍历
    ///给定二叉树的根节点 root ，返回它节点值的 前序 遍历
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var list: [Int] = []
        list.append(root.val)
        list += preorderTraversal(root.left)
        list += preorderTraversal(root.right)
        return list
    }
    ///二叉树的中序遍历
    ///给定一个二叉树的根节点 root ，返回它的 中序 遍历
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var list: [Int] = []
        list += inorderTraversal(root.left)
        list.append(root.val)
        list += inorderTraversal(root.right)
        return list
    }
    ///二叉树的后序遍历
    ///给定一个二叉树的根节点 root，返回它的 后序 遍历
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var list: [Int] = []
        list += postorderTraversal(root.left)
        list += postorderTraversal(root.right)
        list.append(root.val)
        return list
    }
    
}
//root = [1,null,2,3]
let binary = BinaryTree()
let b = TreeNode( 3, nil, nil)
let a = TreeNode(2,  b, nil)
let root = TreeNode(1, nil, a)
binary.preorderTraversal(root)
binary.inorderTraversal(root)
binary.postorderTraversal(root)



