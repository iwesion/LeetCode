//
//  main.swift
//  CourseScheduleII
//
//  Created by wesion on 2021/9/7.
//


//[[1,0],[2,0],[3,1],[3,2]]
func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var degree = Array(repeating: 0, count: numCourses)
        var edge = Array(repeating: [Int](), count: numCourses)
        //筛选为0的节点
        for item in prerequisites {
            edge[item[1]].append(item[0])
            degree[item[0]] += 1
        }
    //degree=[0, 1, 1, 2]
    //edge=[[1, 2], [3], [3], []]
        var result = [Int]()
        var queue = [Int]()
        for i in 0 ..< degree.count {
            let v = degree[i]
            if v == 0 {
                queue.append(i)
                //[0]
            }
        }
        while queue.count > 0 {
            let top = queue.popLast()!
            result.append(top)
            //[0]
            //[0, 2]
            //[0, 2, 1]
            //[0, 2, 1, 3]
            for index in edge[top] {//edge=[[1, 2], [3], [3], []]
                degree[index] -= 1
                //[0, 0, 1, 2]
                //[0, 0, 0, 2]
                //[0, 0, 0, 1]
                //[0, 0, 0, 0]
                if degree[index] == 0 {
                    queue.append(index)
                    // [1]
                    // [1, 2]
                    // [3]
                }
            }
        }
        if result.count != numCourses {
            result = []
        }
        return result
    }
let numCourses = 4,prerequisites = [[1,0],[2,0],[3,1],[3,2]]
print(findOrder(numCourses, prerequisites))

