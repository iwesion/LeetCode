//
//  main.swift
//  WordDictionary
//
//  Created by wesion on 2021/10/19.
//

import Foundation

class WordDictionary {
    class TrieNode {
        var children:[TrieNode?] = Array(repeating: nil, count: 26)
        var isEnd = false
        init() {
            
        }
    }
    var root:TrieNode = .init()
    let aValue = Int(Character("a").asciiValue!)
    
    init() {

    }
    
    func addWord(_ word: String) {
        var node = root
        for item in word {
            let a = Int(item.asciiValue!) - aValue
            if node.children[a] == nil {
                node.children[a] = TrieNode.init()
            }
            node = node.children[a]!
        }
        node.isEnd = true
    }
    
    func search(_ word: String) -> Bool {
        dfs(word, 0, root)
    }
    
    func dfs(_ word: String , _ index:Int , _ root:TrieNode) -> Bool {
        var node = root
        if index == word.count {
            return node.isEnd
        }
        
        let ch:Character = Array(word)[index]
        
        if ch != "." {
            let a = Int(ch.asciiValue!) - aValue
            if node.children[a] != nil  && dfs(word, index + 1, node.children[a]!){
            return true
            }
        }else{
            for i in 0..<26 {
                if node.children[i] != nil  && dfs(word, index + 1, node.children[i]!) {
                    return true
                }
            }
        }
        return false
}
    
}
let wordDictionary:WordDictionary = .init();
wordDictionary.addWord("bad");
wordDictionary.addWord("dad");
wordDictionary.addWord("mad");
print(wordDictionary.search("pad"))
print(wordDictionary.search("bad"))
print(wordDictionary.search(".ad"))
print(wordDictionary.search("b.."))// return False

