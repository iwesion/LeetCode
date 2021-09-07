//
//  main.swift
//  TopoLogicalSort
//
//  Created by wesion on 2021/9/7.
//

import Foundation

let allGraphNote = ["A", "B", "C", "D", "E", "F", "G", "H", "I"];

let relationDirectedGraph: Array<(Any, Any, Any)> =
    [("A", "B", 10), ("A", "F", 11), ("B", "C", 18), ("B", "I", 12), ("B", "G", 16),
     ("F", "G", 17), ("F", "E", 26), ("C", "I", 8), ("C", "D", 22), ("I", "D", 21),
     ("G", "H", 19), ("G", "D", 24), ("H", "D", 16), ("E", "H", 7), ("E", "D", 20)];

let graph = GraphAdjacencyList(notes: allGraphNote,
                               relations: relationDirectedGraph,
                               isNotDirection: false)
graph.displayGraph()

graph.topoLogicalSort()

