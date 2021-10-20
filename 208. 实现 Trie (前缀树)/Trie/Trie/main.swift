//
//  main.swift
//  Trie
//
//  Created by wesion on 2021/10/19.
//

import Foundation

class TrieNode {
    var children:[TrieNode?] = Array(repeating: nil, count: 26)
    var isEnd = false
    /** Initialize your data structure here. */
    init() {
        
    }
}

class Trie {
    class TrieNode {
        var children:[TrieNode?] = Array(repeating: nil, count: 26)
        var isEnd = false
        /** Initialize your data structure here. */
        init() {
            
        }
    }
    let root = TrieNode()
    let aValue = Int(Character("a").asciiValue!)
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Inserts a word into the trie. */
    func insert(_ word: String) {
        var node = root
        for char in word {
            let index = Int(char.asciiValue!) - aValue
            if node.children[index] == nil {
                node.children[index] = TrieNode()
            }
            node = node.children[index]!
        }
        node.isEnd = true
    }
    
    /** Returns if the word is in the trie. */
    func search(_ word: String) -> Bool {
        var node = root
        for char in word {
            let index = Int(char.asciiValue!) - aValue
            if node.children[index] == nil {
                return false
            }
            node = node.children[index]!
        }
        return node.isEnd
    }
    
    /** Returns if there is any word in the trie that starts with the given prefix. */
    func startsWith(_ prefix: String) -> Bool {
        var node = root
        for char in prefix {
            let index = Int(char.asciiValue!) - aValue
            if node.children[index] == nil {
                return false
            }
            node = node.children[index]!
        }
        return true
    }
}
let trie:Trie = .init()

trie.insert("apple");
print(trie.search("apple"))  // 返回 True
print(trie.search("app"))   // 返回 False
print(trie.startsWith("app")) // 返回 True
trie.insert("app");
print(trie.search("app"))     // 返回 True

